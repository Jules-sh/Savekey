library models;

import 'package:hive/hive.dart' show HiveField, HiveType;
import 'package:savekey/models/savekey_folder.dart';

/// Model that represents a single Entry in this App.
/// Mostly stored in a [SavekeyFolder].
@HiveType(typeId: 2)
class SavekeyEntry {
  const SavekeyEntry({
    required this.title,
    required this.username,
    required this.password,
    this.notes = '',
  });

  /// Title of the Entry.
  /// You could also say the Name.
  @HiveField(0)
  final String title;

  /// The Username / Email / Phone Number.
  /// Don't confuse with [title]. You could say name to the
  /// title, but that would be the name of the Entry.
  /// Not the username
  @HiveField(1)
  final String username;

  /// Password for this Entry.
  /// Mostly selfexplaining I would say.
  @HiveField(2)
  final String password;

  /// Additional Notes.
  /// These can be empty. If you don't pass any Notes,
  /// it will be an empty String
  @HiveField(3)
  final String? notes;
}
