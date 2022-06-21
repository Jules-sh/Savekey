library models;

import 'package:savekey/models/savekey_folder.dart';

/// Model that represents a single Entry in this App.
/// Mostly stored in a [SavekeyFolder].
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
}
