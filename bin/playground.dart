import 'package:playground/dotenv.dart';

void main() async {
  DotEnv dotEnv = DotEnv();
  final dados = await dotEnv.env;

  print(dados['DATABASE_URL']);
  print('---------------');
  print(dados['SWAGGER']);
  print('---------------');
  print(dados['JWT_ACCESS_TOKEN_EXPIRESIN']);
  print('---------------');
  print(dados['JWT_REFRESH_TOKEN_EXPIRESIN']);
  print('---------------');
}
