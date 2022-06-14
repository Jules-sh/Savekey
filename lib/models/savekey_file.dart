library models;

import 'dart:convert' show jsonDecode, jsonEncode;

import 'package:savekey/models/savekey_entry.dart';
import 'package:savekey/models/savekey_folder.dart';

/// Model that represents the File / Database.
/// It's possible to have more than one File.
/// It's like you have multiple Databases.
/// Can contain multiple [SavekeyFolder] and [SavekeyEntry]
class SavekeyFile {
  SavekeyFile({
    required this.name,
    required this.folders,
    required this.entries,
  }) {
    _created = DateTime.now();
  }

  /// Name of the File
  final String name;

  /// Folders that are stored in the File
  final List<SavekeyFolder> folders;

  /// Entries that aren't stored in any folder,
  /// so they are stored directly
  /// in the File
  final List<SavekeyEntry> entries;

  /// Date and Time of the Creation of this File.
  /// Will be automatically set in the Constructor.
  late final DateTime _created;

  /// Getter for the Date and Time of the Creation
  /// of this Object.
  DateTime get created => _created;

  /// Create a [SavekeyFile] from a Json Map. This Map is <String, dynamic>.
  /// You have to call [jsonDecode] or decode the json manually before
  /// calling this.
  factory SavekeyFile.fromJson(Map<String, dynamic> jsonMap) {
    return SavekeyFile(
      name: jsonMap['name'],
      folders: jsonMap['folders'],
      entries: jsonMap['entries'],
    );
  }

  /// Create a [SavekeyFile] from a Json String.
  /// You can call this without decoding the String, because this
  /// Constructor will do it for you.
  factory SavekeyFile.fromJsonString(String json) {
    final Map<String, dynamic> decoded = jsonDecode(json);

    return SavekeyFile(
      name: decoded['name'],
      folders: decoded['folders'],
      entries: decoded['entries'],
    );
  }

  /// Returns this Object as a Json String.
  String toJson() {
    return jsonEncode(this);
  }
}
