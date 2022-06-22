// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: avoid_as

part of models;

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SavekeyEntryAdapter extends TypeAdapter<SavekeyEntry> {
  @override
  final int typeId = 2;

  @override
  SavekeyEntry read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SavekeyEntry(
      title: fields[0] as String,
      username: fields[1] as String,
      password: fields[2] as String,
      notes: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SavekeyEntry obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.username)
      ..writeByte(2)
      ..write(obj.password)
      ..writeByte(3)
      ..write(obj.notes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavekeyEntryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
