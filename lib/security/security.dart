library security;

import 'dart:convert';

import 'package:crypto/crypto.dart';

/// Class that holds the Crypt Values for this App.
/// You need to call teh [init] Method before you can use this class.
class Crypt {
  /// Initializes this Class.
  /// Call this Method before you use this class.
  static void init(String password) {
    Crypt.password = password;
  }

  /// Password used in this App.
  static late String password;
}

/// Decrypts Data from this App
class Decrypter {
  /// Decrypts the Data and returns a String.
  /// In this particular App, it returns a Json String.
  static String decrypt(String encrypted) {}
}

/// Encrypts Data in this App
class Encrypter {
  /// Encrypts the Data and returns a String of encrypted Data.
  /// Takes a Stringas input. In this particular App it's a Json String.
  static String encrypt(String json) {}
}
