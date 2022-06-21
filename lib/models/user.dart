library models;

import 'package:flutter/material.dart' show Image;

/// Model that represents
/// the User of this App.
class User {
  const User({
    required this.name,
    required this.picture,
  });

  /// Name of the User
  final String name;

  /// Picture of this User.
  /// Is used when logging in.
  final Image picture;
}
