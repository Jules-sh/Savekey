library storage;

import 'package:hive_flutter/hive_flutter.dart' show Box, Hive, HiveX;
import 'package:savekey/models/savekey_file.dart';
import 'package:savekey/models/user.dart';

/// Class that handles Operations done in IO
/// and contains Functions to store and Load Information
/// from the Local Storage.
/// IMPORTANT: You have to call the [Storage.init] Method
/// before you can do anything with this Class.
/// But you can only call this Method once, if you call it again later,
/// it will resolve in a runtime error.
class Storage {
  /// Key for the User Box.
  static const String _userBoxKEY = 'User Box';

  /// Box that contains a User.
  static late final Box<User> _userBox;

  /// The Key for the Box that contains all Keys
  /// for all the Databases used in the App.
  /// BOX: [_databasesKeysBox]
  static const String _databaseKeysKEY = 'Databases Keys Box';

  /// The Box with all the Keys for other Fatabases.
  /// KEY: [_databaseKeysKEY]
  static late final Box<String> _databasesKeysBox;

  /// Current used Database
  static late Box<SavekeyFile> _database;

  /// A List with all the Boxes, that
  /// contains a Database.
  /// The Keys for this Boxes are stored in the
  /// [_databasesKeysBox], wich has the Key: [_databaseKeysKEY]
  static late final List<Box<SavekeyFile>> _listOfBoxes;

  /// Init Method of the Storage class.
  /// Must be called before anything else
  /// of this class can be called.
  /// Inits the Boxes, opens and assigns it.
  static Future<void> init() async {
    Hive.initFlutter();

    // Get all the Keys for the
    _databasesKeysBox = await Hive.openBox(_databaseKeysKEY);

    // Get all the Databases and put it in the _listOfBoxes
    for (int count = 0; count < _databasesKeysBox.length; count++) {
      _listOfBoxes[count] =
          await Hive.openBox(_databasesKeysBox.values.elementAt(count));
    }
  }

  /// Store all the Data
  static void storeData() {}

  /// Load all the Data
  static void loadData() {}

  // TODO: implement

  /// Returns whether the App is opened the first Time or not.
  static bool get isFirstOpening {
    return true;
  }
}
