import 'dart:io';

class DotEnv {
  final Map<String, dynamic> _env = {};

  get env async {
    await readEnv();
    return _env;
  }

  readEnv() async {
    final line = {};
    final file = File('./assets/env/teste.env');
    final content = await file.readAsString();
    final linhas = line.entries.map((e) => "${e.key}=${e.value}").toList();
    final dadosEnv = linhas..addAll(content.split('\n'));
    _trataLinha(dadosEnv);
  }

  _trataLinha(Iterable<String> dados) {
    Map<String, dynamic> map = {};
    for (var x in dados) {
      var key = x.split('=')[0];
      var value = x.split('=')[1].split('#')[0];
      final map = <String, Object?>{key: value.trim()};
      _env.addEntries(map.entries);
    }
  }
}
