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
      var value = x.split('=')[1].split('#')[0];
      final map = <String, Object?>{key: value.trim()};
      _env.addEntries(map.entries);
    }
  }
}
