import 'package:client_app/router/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _body(),
      ),
    );
  }
}

Widget _body() {
  return GetMaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    initialRoute: AppRouter.splash,
    getPages: AppRouter.getPage,
  );
}
