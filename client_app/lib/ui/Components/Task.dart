import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Task extends StatefulWidget {
  Task({super.key});
  int? id;
  String? category;
  String? name;
  String? image;
  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(bottom: 20, top: 10),
        width: 322,
        height: 90,
        decoration: const BoxDecoration(
            color: Color(0xffFFF5E9),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            const Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Black coffee",
                      style: TextStyle(
                          color: Color(0xff230C02),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "ICED AMERICANO",
                      style: TextStyle(
                          color: Color(0xff230C02),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(
                      left: 30, right: 7, top: 5, bottom: 5),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "resource/img/background.png",
                        ),
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
