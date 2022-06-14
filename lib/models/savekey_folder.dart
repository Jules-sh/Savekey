library models;

import 'dart:convert' show jsonDecode, jsonEncode;

import 'package:savekey/models/savekey_entry.dart';
import 'package:savekey/models/savekey_file.dart';

/// Model that represents a single Folder / Group of Entries in this App.
/// It has a List of [SavekeyEntry].
/// Always stored in a [SavekeyFile]
class SavekeyFolder {
  SavekeyFolder({
    required this.title,
    required this.entries,
  }) {
    _created = DateTime.now();
  }

  /// The Title of the Folder
  final String title;

  /// The Entries stored in this Folder
  final List<SavekeyEntry> entries;

  /// The Date and Time this Folder was created.
  /// Will be automatically set in the Constructor.
  late final DateTime _created;

  /// Getter for the Date and Time of the Creation
  /// of this Object.
  DateTime get created => _created;

  /// Create a [SavekeyFolder] from a Json Map.
  /// You have to decode your Json String before calling this
  /// Constructor.
  factory SavekeyFolder.frommJson(Map<String, dynamic> jsonMap) {
    return SavekeyFolder(
      title: jsonMap['title'],
      entries: jsonMap['entries'],
    );
  }

  /// Create a [SavekeyFolder] from a Json String.
  /// You don't have to decode you Json String before calling this
  /// Constructor.
  /// The Consntructor will take the String and handle the rest.
  factory SavekeyFolder.fromJsonString(String json) {
    final Map<String, dynamic> decoded = jsonDecode(json);

    return SavekeyFolder(
      title: decoded['title'],
      entries: decoded['entries'],
    );
  }

  /// Returns this Object as a Json String.
  String toJson() {
    return jsonEncode(this);
  }
}
