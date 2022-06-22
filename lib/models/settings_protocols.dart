library models;

import 'package:savekey/models/internal_settings.dart';

/// Enum to determine whether this is an
enum SettingsType {
  official,
  internal,
}

/// Set of all the Settings used in this App.
/// This contains public and internal Settings.
const Set<GeneralSettingsProtocol> allSettings = {};

/// General Settings Protocl, which the
/// other Protocols match.
abstract class GeneralSettingsProtocol {
  const GeneralSettingsProtocol({required this.type});
  // Constant Constructor

  /// Value that determines if
  /// conforms to the [SettingsProtocol]
  /// or the [InternalSettingsProtocol]
  /// [SettingsType.official] : [SettingsProtocol]
  /// [SettingsType.internal] : [InternalSettingsProtocol]
  final SettingsType type;

  /// Returns the Type of
  /// Protocol, the Settigns corresponds to.
  Type get protocol {
    switch (type) {
      case SettingsType.official:
        return SettingsProtocol;
      case SettingsType.internal:
        return InternalSettingsProtocol;
      default:
        return GeneralSettingsProtocol;
    }
  }
}

/// Set of all the official Settings.
/// Official Settings are Settings that match
/// the [SettingsProtocol].
const Set<SettingsProtocol> officialSettings = {};

/// The Protocol all Settings have to match.
/// The Settings that match this Protocol are shonw
/// to the User.
/// Also the User can change the Values of it.
abstract class SettingsProtocol extends GeneralSettingsProtocol {
  const SettingsProtocol({
    required this.name,
    required this.description,
    required this.choices,
    required this.value,
  }) : super(type: SettingsType.official);
  // Constant Constructor

  /// The Name of the Setting.
  final String name;

  /// A closer and more detailed
  /// description of this Setting, it's
  /// possible choices and when to use them.
  final String description;

  /// All the Choices that are possible for this App
  final Set<dynamic> choices;

  final dynamic value;
}

/// All Internal Settings that are used in this App.
/// The Internal Settings aren't shown to the User,
/// and the User cannot influence the Value of it.
const Set<InternalSettingsProtocol> internalSettings = {};

/// Protocol all Internal Settings have to match.
/// These internal Settings are only used in the App,
/// without the User seeing any of the Operations and
/// actions that are done.
/// Also the user cannot change or influence the Value
/// of this Settings.
abstract class InternalSettingsProtocol extends GeneralSettingsProtocol {
  const InternalSettingsProtocol({
    required this.name,
    required this.choices,
    required this.value,
  }) : super(type: SettingsType.internal);

  /// The Name of identifier of this Setting.
  final String name;

  /// All the Choices that are possible for
  /// this Setting.
  final Set<dynamic> choices;

  final dynamic value;
}

/// Contains all Names of all Settings used in this App.
/// This is the only place they are hardcoded.
const Map<Type, String> allSettingNames = {
  IsFirstOpeningSetting: 'Is First Opening Setting',
};
