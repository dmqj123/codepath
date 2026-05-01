// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ssh_connection.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SshConnectionAdapter extends TypeAdapter<SshConnection> {
  @override
  final int typeId = 1;

  @override
  SshConnection read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SshConnection(
      id: fields[0] as String,
      name: fields[1] as String,
      host: fields[2] as String,
      port: fields[3] as int,
      username: fields[4] as String,
      password: fields[5] as String?,
      privateKey: fields[6] as String?,
      privateKeyPassword: fields[7] as String?,
      usePrivateKey: fields[8] as bool,
      group: fields[9] as String?,
      tags: (fields[10] as List).cast<String>(),
      lastConnected: fields[11] as DateTime?,
      isFavorite: fields[12] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, SshConnection obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.host)
      ..writeByte(3)
      ..write(obj.port)
      ..writeByte(4)
      ..write(obj.username)
      ..writeByte(5)
      ..write(obj.password)
      ..writeByte(6)
      ..write(obj.privateKey)
      ..writeByte(7)
      ..write(obj.privateKeyPassword)
      ..writeByte(8)
      ..write(obj.usePrivateKey)
      ..writeByte(9)
      ..write(obj.group)
      ..writeByte(10)
      ..write(obj.tags)
      ..writeByte(11)
      ..write(obj.lastConnected)
      ..writeByte(12)
      ..write(obj.isFavorite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SshConnectionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ConnectionStatusAdapter extends TypeAdapter<ConnectionStatus> {
  @override
  final int typeId = 2;

  @override
  ConnectionStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ConnectionStatus.disconnected;
      case 1:
        return ConnectionStatus.connecting;
      case 2:
        return ConnectionStatus.connected;
      case 3:
        return ConnectionStatus.error;
      default:
        return ConnectionStatus.disconnected;
    }
  }

  @override
  void write(BinaryWriter writer, ConnectionStatus obj) {
    switch (obj) {
      case ConnectionStatus.disconnected:
        writer.writeByte(0);
        break;
      case ConnectionStatus.connecting:
        writer.writeByte(1);
        break;
      case ConnectionStatus.connected:
        writer.writeByte(2);
        break;
      case ConnectionStatus.error:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConnectionStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SshConnectionImpl _$$SshConnectionImplFromJson(Map<String, dynamic> json) =>
    _$SshConnectionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      host: json['host'] as String,
      port: (json['port'] as num).toInt(),
      username: json['username'] as String,
      password: json['password'] as String?,
      privateKey: json['privateKey'] as String?,
      privateKeyPassword: json['privateKeyPassword'] as String?,
      usePrivateKey: json['usePrivateKey'] as bool? ?? false,
      group: json['group'] as String?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      lastConnected: json['lastConnected'] == null
          ? null
          : DateTime.parse(json['lastConnected'] as String),
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$SshConnectionImplToJson(_$SshConnectionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'host': instance.host,
      'port': instance.port,
      'username': instance.username,
      'password': instance.password,
      'privateKey': instance.privateKey,
      'privateKeyPassword': instance.privateKeyPassword,
      'usePrivateKey': instance.usePrivateKey,
      'group': instance.group,
      'tags': instance.tags,
      'lastConnected': instance.lastConnected?.toIso8601String(),
      'isFavorite': instance.isFavorite,
    };
