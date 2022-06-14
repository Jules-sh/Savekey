library models;

import 'dart:convert' show jsonDecode, jsonEncode;

import 'package:savekey/models/savekey_file.dart';
import 'package:savekey/models/savekey_folder.dart';

/// Model that represents a single Entry in this App.
/// Always stored in a [SavekeyFile]. Mostly in a [SavekeyFolder]
class SavekeyEntry {
  SavekeyEntry({
    required this.title,
    required this.username,
    required this.password,
    this.notes = '',
  }) {
    _created = DateTime.now();
  }

  /// Title of the Entry.
  /// You could also say the Name.
  final String title;

  /// The Username / Email / Phone Number.
  /// Don't confuse with [title]. You could say name to the
  /// title, but that would be the name of the Entry.
  /// Not the username
  final String username;

  /// Password for this Entry.
  /// Mostly selfexplaining I would say.
  final String password;

  /// Additional Notes.
  /// These can be empty. If you don't pass any Notes,
  /// it will be an empty String
  final String? notes;

  /// Date and Time of the creation of this
  /// Entry.
  /// These will be automatically set in the Constructor.
  late final DateTime _created;

  /// Getter for the Date and Time of the Creation
  /// of this Object.
  DateTime get created => _created;

  /// Create a [SavekeyEntry] from a Json Map. This Map is <String, dynamic>.
  /// You have to decode you Json before calling this Method.
  factory SavekeyEntry.fromJson(Map<String, dynamic> jsonMap) {
    return SavekeyEntry(
      title: jsonMap['title'],
      username: jsonMap['username'],
      password: jsonMap['password'],
      notes: jsonMap['notes'],
    );
  }

  /// Create a [SavekeyEntry] from a Json String.
  /// You can call this Constructor without decoding you Json String
  /// before. This Constructor will do it for you.
  factory SavekeyEntry.fromJsonString(String json) {
    final Map<String, dynamic> decoded = jsonDecode(json);

    return SavekeyEntry(
      title: decoded['title'],
      username: decoded['username'],
      password: decoded['password'],
      notes: decoded['notes'],
    );
  }

  /// Returns this Object as a Json String.
  String toJson() {
    return jsonEncode(this);
  }
}
