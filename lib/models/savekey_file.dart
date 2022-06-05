library models;

import 'dart:io';

import 'package:savekey/models/savekey_entry.dart';
import 'package:savekey/models/savekey_folder.dart';

/// Model that represents the File / Database.
/// It's possible to have more than one File.
/// It's like you have multiple Databases.
/// Can contain multiple [SavekeyFolder] and [SavekeyEntry]
class SavekeyFile {
  const SavekeyFile();
}
