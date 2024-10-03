// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chathistory.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChathistoryAdapter extends TypeAdapter<Chathistory> {
  @override
  final int typeId = 0;

  @override
  Chathistory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Chathistory(
      chatId: fields[0] as String,
      prompt: fields[1] as String,
      response: fields[2] as String,
      imageurl: (fields[3] as List).cast<String>(),
      time: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Chathistory obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.chatId)
      ..writeByte(1)
      ..write(obj.prompt)
      ..writeByte(2)
      ..write(obj.response)
      ..writeByte(3)
      ..write(obj.imageurl)
      ..writeByte(4)
      ..write(obj.time);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChathistoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
