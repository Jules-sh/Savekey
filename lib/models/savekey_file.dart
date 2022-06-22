library models;

import 'package:hive/hive.dart' show HiveField, HiveType;
import 'package:savekey/models/savekey_folder.dart';
import 'package:savekey/models/user.dart';
import 'package:savekey/storage/storage.dart';

/// Represents a single Database
/// in this App.
@HiveType(typeId: 0)
class SavekeyFile {
  const SavekeyFile({
    required this.name,
    required this.folders,
    required this.users,
  });

  /// This is the Name of the Database.
  /// It's also the Key for the Box that
  /// is opened and managed in the [Storage] class
  @HiveField(0)
  final String name;

  /// Folders stored in this Database.
  @HiveField(1)
  final List<SavekeyFolder> folders;

  /// The Users that have access to this Database.
  @HiveField(2)
  final List<User> users;
}
