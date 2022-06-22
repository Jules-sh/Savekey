library models;

import 'package:hive/hive.dart'
    show BinaryReader, BinaryWriter, HiveField, HiveType, TypeAdapter;
import 'package:savekey/models/savekey_entry.dart';

part 'savekey_folder.g.dart';

/// Model that represents a single Folder / Group of Entries in this App.
/// It has a List of [SavekeyEntry].
@HiveType(typeId: 1)
class SavekeyFolder {
  const SavekeyFolder({
    required this.title,
    required this.entries,
  });

  /// The Title of the Folder
  @HiveField(0)
  final String title;

  /// The Entries stored in this Folder
  @HiveField(1)
  final List<SavekeyEntry> entries;
}
