import 'package:client_app/router/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("resource/img/background.png"))),
          child: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 300,
                ),
                const Wrap(direction: Axis.vertical, children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                        color: Color(0xff230C02),
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                    softWrap: true,
                  ),
                  Text(
                    "Back!",
                    style: TextStyle(
                        color: Color(0xff230C02),
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                ]),
                Form(
                    child: Column(
                  children: [
                    Container(
                      width: 300,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            label: Text(
                          "User name",
                          style: TextStyle(
                              color: Color(0xff230C02),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            label: Text(
                          "Password",
                          style: TextStyle(
                              color: Color(0xff230C02),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                    ),
                  ],
                )),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff230C02),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 130, vertical: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Color(0xffEDDBC5),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Get.toNamed(AppRouter.login);
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            width: 1,
                            color: Colors.black38,
                            style: BorderStyle.solid),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 95, vertical: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child: const Text(
                        "Create an account",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot your password?",
                        style: TextStyle(color: Color(0xff230C02)),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
