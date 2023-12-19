import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "resource/img/background.png",
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        const Positioned(
            top: 320,
            left: 50,
            child: Wrap(direction: Axis.vertical, children: [
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
                softWrap: true,
              ),
            ])),
        Positioned(
            bottom: 70,
            left: 50,
            child: Column(
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
                  onPressed: () {},
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
            ))
      ],
    );
  }
}
