import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../models/ai/ai_config.dart';

final logger = Logger();

class AiService {
  final Dio _dio = Dio();
  AiConfig? _config;

  void setConfig(AiConfig config) {
    _config = config;
    _dio.options.baseUrl = config.apiUrl;
    _dio.options.headers = {
      'Authorization': 'Bearer ${config.apiKey}',
      'Content-Type': 'application/json',
    };
    _dio.options.connectTimeout = const Duration(seconds: 30);
    _dio.options.receiveTimeout = const Duration(seconds: 60);
  }

  void clearConfig() {
    _config = null;
  }

  bool get isConfigured => _config != null;

  Stream<AiChunk> sendMessageStream(
    List<AiMessage> messages, {
    List<AiTool>? tools,
  }) async* {
    if (_config == null) {
      throw Exception('AI not configured. Please set API URL and key in settings.');
    }

    try {
      final requestBody = _buildRequestBody(messages, tools);
      
      logger.d('AI Request: ${jsonEncode(requestBody)}');

      final response = await _dio.post(
        '/chat/completions',
        data: requestBody,
        options: Options(
          responseType: ResponseType.stream,
        ),
      );

      final stream = response.data.stream as Stream<List<int>>;
      final transformer = const Utf8Decoder();
      String buffer = '';

      await for (final chunk in stream.transform(transformer)) {
        buffer += chunk;
        final lines = buffer.split('\n');
        buffer = lines.removeLast();

        for (final line in lines) {
          if (line.startsWith('data: ')) {
            final data = line.substring(6);
            if (data == '[DONE]') continue;

            try {
              final json = jsonDecode(data);
              final delta = json['choices']?[0]?['delta'];
              
              if (delta != null) {
                final content = delta['content'] as String?;
                final toolCalls = delta['tool_calls'] as List<dynamic>?;

                if (content != null && content.isNotEmpty) {
                  yield AiChunk(type: AiChunkType.content, content: content);
                }

                if (toolCalls != null && toolCalls.isNotEmpty) {
                  yield AiChunk(
                    type: AiChunkType.toolCall,
                    toolCalls: toolCalls.map((t) => AiToolCall(
                      id: t['id'] ?? '',
                      type: t['type'] ?? 'function',
                      function: t['function'] ?? {},
                    )).toList(),
                  );
                }
              }
            } catch (e) {
              logger.w('Failed to parse SSE data: $e');
            }
          }
        }
      }
    } on DioException catch (e) {
      logger.e('AI API error: ${e.message}');
      throw Exception('AI API error: ${e.message}');
    } catch (e) {
      logger.e('AI service error: $e');
      throw Exception('AI service error: $e');
    }
  }

  Future<AiResponse> sendMessage(
    List<AiMessage> messages, {
    List<AiTool>? tools,
  }) async {
    if (_config == null) {
      throw Exception('AI not configured. Please set API URL and key in settings.');
    }

    try {
      final requestBody = _buildRequestBody(messages, tools);
      
      logger.d('AI Request: ${jsonEncode(requestBody)}');

      final response = await _dio.post(
        '/chat/completions',
        data: requestBody,
      );

      final data = response.data;
      final choice = data['choices']?[0];
      final message = choice?['message'];

      return AiResponse(
        content: message?['content'] ?? '',
        toolCalls: (message?['tool_calls'] as List<dynamic>?)?.map((t) => AiToolCall(
          id: t['id'] ?? '',
          type: t['type'] ?? 'function',
          function: t['function'] ?? {},
        )).toList(),
        usage: AiUsage(
          promptTokens: data['usage']?['prompt_tokens'] ?? 0,
          completionTokens: data['usage']?['completion_tokens'] ?? 0,
          totalTokens: data['usage']?['total_tokens'] ?? 0,
        ),
      );
    } on DioException catch (e) {
      logger.e('AI API error: ${e.message}');
      throw Exception('AI API error: ${e.message}');
    } catch (e) {
      logger.e('AI service error: $e');
      throw Exception('AI service error: $e');
    }
  }

  Map<String, dynamic> _buildRequestBody(
    List<AiMessage> messages,
    List<AiTool>? tools,
  ) {
    final body = <String, dynamic>{
      'model': _config!.model,
      'messages': messages.map((m) => {
        'role': m.role,
        'content': m.content,
      }).toList(),
      'temperature': _config!.temperature,
      'max_tokens': _config!.maxTokens,
      'stream': true,
    };

    if (tools != null && tools.isNotEmpty) {
      body['tools'] = tools.map((t) => t.toJson()).toList();
      body['tool_choice'] = 'auto';
    }

    return body;
  }

  void dispose() {
    _dio.close();
  }
}

class AiChunk {
  final AiChunkType type;
  final String? content;
  final List<AiToolCall>? toolCalls;

  AiChunk({
    required this.type,
    this.content,
    this.toolCalls,
  });
}

enum AiChunkType {
  content,
  toolCall,
  error,
  done,
}

class AiResponse {
  final String content;
  final List<AiToolCall>? toolCalls;
  final AiUsage? usage;

  AiResponse({
    required this.content,
    this.toolCalls,
    this.usage,
  });
}

class AiUsage {
  final int promptTokens;
  final int completionTokens;
  final int totalTokens;

  AiUsage({
    required this.promptTokens,
    required this.completionTokens,
    required this.totalTokens,
  });
}

class AiTool {
  final String type;
  final AiToolFunction function;

  AiTool({
    this.type = 'function',
    required this.function,
  });

  Map<String, dynamic> toJson() => {
    'type': type,
    'function': function.toJson(),
  };
}

class AiToolFunction {
  final String name;
  final String description;
  final Map<String, dynamic> parameters;

  AiToolFunction({
    required this.name,
    required this.description,
    required this.parameters,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'description': description,
    'parameters': parameters,
  };
}

final aiServiceProvider = Provider<AiService>((ref) {
  return AiService();
});
