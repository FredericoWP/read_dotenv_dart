import 'package:playground/dotenv.dart';

void main() async {
  DotEnv dotEnv = DotEnv();
  print("${dotEnv['DATABASE_URL'].runtimeType} => ${dotEnv['DATABASE_URL']} ");
  print("${dotEnv['SWAGGER'].runtimeType} => ${dotEnv['SWAGGER']} ");
  print(
      "${dotEnv['JWT_ACCESS_TOKEN_EXPIRESIN'].runtimeType} => ${dotEnv['JWT_ACCESS_TOKEN_EXPIRESIN']} ");
  print(
      "${dotEnv['JWT_REFRESH_TOKEN_EXPIRESIN'].runtimeType} => ${dotEnv['JWT_REFRESH_TOKEN_EXPIRESIN']} ");
}
