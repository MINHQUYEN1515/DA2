import 'package:client_app/ui/Components/Task.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(color: Color(0xff230C02)),
          child: Column(children: [Task(), Task(), Task()]),
        ),
      ]),
    );
  }
}
