library models;

import 'package:savekey/models/settings_protocols.dart'
    show allSettingNames, InternalSettingsProtocol;

/// Setting to determine whether it's the first Time the
/// App is opened or not.
class IsFirstOpeningSetting extends InternalSettingsProtocol {
  IsFirstOpeningSetting({
    required super.name,
    required super.choices,
    required super.value,
  });

  @override
  String get name => allSettingNames[runtimeType]!;

  @override
  Set<bool> get choices => {false, true};

  @override
  get value => true;
}
