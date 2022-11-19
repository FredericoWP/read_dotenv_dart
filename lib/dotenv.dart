import 'dart:io';

class DotEnv {
  DotEnv() {
    readEnv();
  }

  final Map<String, dynamic> _env = {};
  dynamic operator [](String key) => _env[key];

  readEnv() {
    final line = {};
    final file = File('./assets/env/teste.env');
    final content = file.readAsStringSync();
    final linhas = line.entries.map((e) => "${e.key}=${e.value}").toList();
    final dadosEnv = linhas..addAll(content.split('\n'));
    _trataLinha(dadosEnv);
  }

  _trataLinha(Iterable<String> dados) {
    for (var x in dados) {
      var key = x.split('=')[0];
      dynamic value = x.replaceAll("$key=", '').split('#')[0];
      value = _typeConvert(value.trim());
      final map = <String, Object?>{key: value};
      _env.addEntries(map.entries);
    }
  }

  _typeConvert(String value) {
    if (int.tryParse(value) != null) return int.tryParse(value);
    if (DateTime.tryParse(value) != null) return DateTime.tryParse(value);
    if (value == "true") return true;
    if (value == "false") return false;
    return value;
  }
}
