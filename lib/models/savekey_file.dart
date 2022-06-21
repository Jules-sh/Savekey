library models;

import 'package:savekey/models/savekey_folder.dart';

/// Represents a single Database
/// in this App.
class SavekeyFile {
  const SavekeyFile({required this.folders});

  /// Folders stored in this Database.
  final List<SavekeyFolder> folders;
}
