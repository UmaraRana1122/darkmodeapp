import 'package:darkmodeapp/screens/Chat_screen.dart';
import 'package:darkmodeapp/screens/home_screen.dart';
import 'package:darkmodeapp/screens/messages_screen.dart';
import 'package:darkmodeapp/screens/profile_screen.dart';
import 'package:darkmodeapp/screens/user_likes_screen.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swipe_cards/swipe_cards.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedPage = 0;
  var _pagelist = [
    const HomeScreen(),
    const UserLikesScreen(),
    const MessagesScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.grey.shade800,
                        Colors.grey.shade900,
                        Colors.grey.shade900,
                      ],
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(child: _pagelist[selectedPage]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: InkWell(
          onTap: () async {},
          child: Image.asset(
            "assets/logo/floatinglogo.png",
            height: 120,
          ),
        ),
        bottomNavigationBar: Container(
            height: 95,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: BottomAppBar(
                    color: MainColor.colorWhite,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            customBorder: const CircleBorder(),
                            radius: 40,
                            onTap: () {
                              selectedPage = 0;
                              setState(() {});
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/home.png",
                                color: selectedPage == 0
                                    ? const Color(0xFFFF0000)
                                    : MainColor.grey,
                              ),
                            )),
                        InkWell(
                            customBorder: const CircleBorder(),
                            radius: 40,
                            onTap: () {
                              selectedPage = 1;
                              setState(() {});
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/match.png",
                                color: selectedPage == 1
                                    ? const Color(0xFFFF0000)
                                    : MainColor.grey,
                              ),
                            )),
                        InkWell(
                            customBorder: const CircleBorder(),
                            radius: 40,
                            onTap: () {
                              selectedPage = 2;
                              setState(() {});
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/message.png",
                                color: selectedPage == 2
                                    ? const Color(0xFFFF0000)
                                    : MainColor.grey,
                              ),
                            )),
                        InkWell(
                            customBorder: const CircleBorder(),
                            radius: 40,
                            onTap: () {
                              selectedPage = 3;
                              setState(() {});
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/profile.png",
                                color: selectedPage == 3
                                    ? const Color(0xFFFF0000)
                                    : MainColor.grey,
                              ),
                            )),
                      ],
                    )))));
  }
}
