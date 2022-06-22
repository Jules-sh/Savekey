// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SavekeyFolderAdapter extends TypeAdapter<SavekeyFolder> {
  @override
  final int typeId = 1;

  @override
  SavekeyFolder read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SavekeyFolder(
      title: fields[0] as String,
      entries: (fields[1] as List).cast<SavekeyEntry>(),
    );
  }

  @override
  void write(BinaryWriter writer, SavekeyFolder obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.entries);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavekeyFolderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
