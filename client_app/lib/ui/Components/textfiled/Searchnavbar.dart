import 'package:flutter/material.dart';

class SearchNavbar extends StatefulWidget {
  const SearchNavbar({super.key});

  @override
  State<SearchNavbar> createState() => _SearchNavbarState();
}

class _SearchNavbarState extends State<SearchNavbar> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          label: Text(
            "Search",
            style: TextStyle(color: Color(0xff230C02)),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xff230C02),
            size: 30,
          ),
          border: InputBorder.none,
          hintText: "Good day"),
    );
  }
}
