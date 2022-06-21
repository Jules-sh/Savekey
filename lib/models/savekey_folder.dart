library models;

import 'package:savekey/models/savekey_entry.dart';

/// Model that represents a single Folder / Group of Entries in this App.
/// It has a List of [SavekeyEntry].
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
}
