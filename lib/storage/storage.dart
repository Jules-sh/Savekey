library storage;

import 'dart:io' show File, Directory;

import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;

/// Class that handles Operations done in IO
/// and contains Functions to store and Load Information
/// from the Local Storage.
class Storage {
  static late final Directory dir;
  static late final File file;

  static Future<void> init() async {
    dir = await getApplicationDocumentsDirectory();
    file = File(dir.path);
  }

  static void storeData() {}

  static void loadData() {}

  // TODO: implement
  /// Returns whether the App is opened the first Time or not.
  static bool get isFirstOpening {
    return true;
  }
}
