library storage;

import 'dart:io' show File, Directory;

import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;

/// Class that handles Operations done in IO
/// and contains Functions to store and Load Information
/// from the Local Storage.
/// IMPORTANT: You have to call the [Storage.init] Method
/// before you can do anything with this Class.
/// But you can only call this Method once, if you call it again later,
/// it will resolve in a runtime error.
class Storage {
  /// The Directory, where the Files are stored.
  static late final Directory dir;

  /// The File with which you work
  static late final File file;

  /// Init Method for the Storage. Gets the [dir] and create
  /// a File with it.
  /// This Method has to be called before you call any other Method
  /// of this class.
  /// You can only call this Method once.
  /// If you call it again, it will resolve with an runtime error.
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
