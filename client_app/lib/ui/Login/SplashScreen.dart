import 'package:client_app/router/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: [
        Image.asset(
          "resource/img/background.png",
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        const Positioned(
            top: 400,
            left: 80,
            child: Text(
              "COFFEE SHOP",
              style: TextStyle(
                  color: Color(0xff230C02),
                  fontSize: 36,
                  fontWeight: FontWeight.w700),
            )),
        const Positioned(
            top: 450,
            left: 120,
            child: Text(
              "Enjoy the drink coffee .",
              style: TextStyle(
                  color: Color(0xff230C02),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            )),
        Positioned(
            top: 550,
            left: 70,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff230C02),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  Get.toNamed(AppRouter.login);
                },
                child: Text("Go to shop"))),
      ]),
    );
  }
}
