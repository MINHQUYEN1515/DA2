import 'package:client_app/ui/Login/Login.dart';
import 'package:get/get.dart';

class AppRouter {
  AppRouter._();
  static const String login = "/login";

  static List<GetPage> getPage = [
    GetPage(name: login, page: () => const Login())
  ];
}
