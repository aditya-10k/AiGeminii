// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SettingsAdapter extends TypeAdapter<Settings> {
  @override
  final int typeId = 2;

  @override
  Settings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Settings(
      isDarktheme: fields[0] as bool,
      shouldspeak: fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Settings obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.isDarktheme)
      ..writeByte(1)
      ..write(obj.shouldspeak);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SettingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
