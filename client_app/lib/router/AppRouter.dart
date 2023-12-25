import 'package:client_app/ui/Login/Login.dart';
import 'package:client_app/ui/Login/LoginScreen.dart';
import 'package:client_app/ui/Login/SplashScreen.dart';
import 'package:get/get.dart';

class AppRouter {
  AppRouter._();
  static const String splash = '/splash';
  static const String login = "/login";
  static const String signup = "/signup";

  static List<GetPage> getPage = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(name: login, page: () => const Login()),
    GetPage(name: signup, page: () => const LoginScreen())
  ];
}
