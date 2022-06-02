library blocs;

import 'package:bloc_implementation/bloc_implementation.dart' show Bloc;

class HomescreenBloc extends Bloc {
  @override
  void init() {
    loadName();
    super.init();
  }

  /// Name of the User
  String username = 'User';

  /// Loads the Name of the User from the Storage and stores
  /// it in the [username] variable
  void loadName() {
    username = 'Name';
  }

  @override
  void dispose() {}
}
