// ignore_for_file: file_names

import 'package:client_app/ui/Components/button/Text_Button.dart';
import 'package:client_app/ui/Components/textfiled/Searchnavbar.dart';
import 'package:client_app/ui/HomeApp/MainApp_cubit.dart';
import 'package:client_app/ui/HomeApp/MainApp_state.dart';
import 'package:client_app/ui/HomeApp/ScreenBody/Cart/Cart_page.dart';
import 'package:client_app/ui/HomeApp/ScreenBody/Heart/Heart.dart';
import 'package:client_app/ui/HomeApp/ScreenBody/Home/home_page.dart';
import 'package:client_app/ui/HomeApp/ScreenBody/Profile/Profile.dart';
import 'package:client_app/models/param/NavigatorHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return MainAppCubit();
      },
      child: const MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late final MainAppCubit _cubit;
  final navigatorHome = [
    NavigatorHome(id: 0, title: "Phổ biến"),
    NavigatorHome(id: 1, title: "Coffe"),
    NavigatorHome(id: 2, title: "Nước ngọt"),
    NavigatorHome(id: 3, title: "Đồ tráng miệng"),
  ];
  final page = const [Home(), Cart(), Heart(), Profile()];
  double screen = 160;
  @override
  void initState() {
    super.initState();
    _cubit = BlocProvider.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return Material(child: BlocBuilder<MainAppCubit, MainAppState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xffeedcc6),
              toolbarHeight: screen,
              actions: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          const Expanded(flex: 2, child: SearchNavbar()),
                          Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Stack(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.notifications,
                                          size: 30,
                                          color: Color(0xff230C02),
                                        ),
                                      ),
                                      Positioned(
                                          top: 14,
                                          right: 15,
                                          child: Container(
                                            height: 7,
                                            width: 7,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xffc32c37)),
                                          ))
                                    ],
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.menu,
                                          size: 30, color: Color(0xff230C02)))
                                ],
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 130),
                      child: const Text(
                        "What would you like\nto drink today?",
                        style: TextStyle(
                            color: Color(0xff230C02),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                        softWrap: false,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BlocBuilder<MainAppCubit, MainAppState>(
                        builder: (context, state) {
                      if (state.index == 0) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...navigatorHome
                                .map((e) => Row(
                                      children: [
                                        ButtonCustom(
                                          title: e.title,
                                          id: e.id,
                                          onTap: () {
                                            setState(() {
                                              NavigatorHome.select = e.id;
                                            });
                                          },
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        )
                                      ],
                                    ))
                                .toList()
                          ],
                        );
                      }
                      return const SizedBox();
                    })
                  ],
                )
              ],
            ),
            body: BlocBuilder<MainAppCubit, MainAppState>(
                builder: (context, state) {
              return page[state.index ?? 0];
            }),
            bottomNavigationBar: BlocBuilder<MainAppCubit, MainAppState>(
              builder: (context, state) {
                return NavigationBar(
                    backgroundColor: const Color(0xffeedcc6),
                    selectedIndex: state.index ?? 0,
                    indicatorColor: Colors.yellow,
                    onDestinationSelected: (index) {
                      _cubit.chooseScreen(index);
                      setState(() {
                        index == 0 ? screen = 160 : screen = 140;
                      });
                    },
                    destinations: const [
                      NavigationDestination(icon: Icon(Icons.home), label: ''),
                      NavigationDestination(
                          icon: Icon(Icons.shopping_cart), label: ''),
                      NavigationDestination(
                          icon: Icon(Icons.favorite), label: ''),
                      NavigationDestination(
                          icon: Icon(Icons.person_2_outlined), label: ''),
                    ]);
              },
            ));
      },
    ));
  }
}
