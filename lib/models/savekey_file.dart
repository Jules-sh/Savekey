library models;

import 'dart:convert' show jsonDecode, jsonEncode;

import 'package:savekey/models/savekey_entry.dart';
import 'package:savekey/models/savekey_folder.dart';

/// Model that represents the File / Database.
/// It's possible to have more than one File.
/// It's like you have multiple Databases.
/// Can contain multiple [SavekeyFolder] and [SavekeyEntry]
class SavekeyFile {
  const SavekeyFile({
    required this.name,
    required this.folders,
    required this.entries,
  });

  /// Name of the File
  final String name;

  /// Folders that are stored in the File
  final List<SavekeyFolder> folders;

  /// Entries that aren't stored in any folder,
  /// so they are stored directly
  /// in the File
  final List<SavekeyEntry> entries;

  factory SavekeyFile.fromJson(Map<String, dynamic> jsonMap) {
    return SavekeyFile();
  }

  factory SavekeyFile.fromJsonString(String json) {
    final String decoded = jsonDecode(json);
    return SavekeyFile();
  }

  String toJson() {
    return jsonEncode();
    return '';
  }
}
