library models;

import 'package:savekey/models/settings_protocols.dart' hide allSettings;

class LanguageSetting extends SettingsProtocol {
  const LanguageSetting({
    required super.name,
    required super.description,
    required super.choices,
    required super.value,
  });
}
