// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SavekeyFileAdapter extends TypeAdapter<SavekeyFile> {
  @override
  final int typeId = 0;

  @override
  SavekeyFile read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SavekeyFile(
      name: fields[0] as String,
      folders: (fields[1] as List).cast<SavekeyFolder>(),
      users: (fields[2] as List).cast<User>(),
    );
  }

  @override
  void write(BinaryWriter writer, SavekeyFile obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.folders)
      ..writeByte(2)
      ..write(obj.users);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavekeyFileAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
