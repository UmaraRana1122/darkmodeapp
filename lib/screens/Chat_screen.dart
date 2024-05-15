import 'dart:ui';

import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/my_inkwell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
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
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyInkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              "assets/logo/arrow.png",
                              height: 22,
                            ),
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text(
                                'GOLD TIER CHATROOM',
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp),
                                ),
                              ),
                              Text(
                                '19+ Online',
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp),
                                ),
                              ),
                            ],
                          ),
                          Spacer()
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Stack(children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color(0xff5a5a5a),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 2.5.h,
                                      backgroundColor: MainColor.heartRed,
                                      child: CircleAvatar(
                                        radius: 2.2.h,
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            "assets/images/henna.png"),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: const Text('Hannah',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFFCCCCCC),
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "QuicksandBold")),
                                    ),
                                    Text(
                                        'Hi, I would like to inquire about an \napp design. Can you help me?',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFFffffff),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "QuicksandBold")),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('10:26pm',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFFA3A3A3),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "QuicksandBold")),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: -1,
                          right: -20,
                          child: Image.asset(
                            'assets/logo/Tier.png',
                            height: 35,
                            width: 80,
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Stack(children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 74,
                            decoration: BoxDecoration(
                              color: Color(0xff990000),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'Hi, I would like to inquire about an \napp design. Can you help me?',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFFffffff),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "QuicksandBold")),
                                  Text('10:26pm',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFFA3A3A3),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "QuicksandBold")),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: -1,
                            right: -9.3,
                            child: Image.asset(
                              'assets/logo/platinium.png',
                              height: 60,
                              width: 80,
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Stack(children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color(0xff5a5a5a),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 2.5.h,
                                      backgroundColor: MainColor.heartRed,
                                      child: CircleAvatar(
                                        radius: 2.2.h,
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            "assets/images/maya.png"),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: const Text('Jessika',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFFCCCCCC),
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "QuicksandBold")),
                                    ),
                                    Text(
                                        'Hi, I would like to inquire about an \napp design. Can you help me?',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFFffffff),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "QuicksandBold")),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('10:26pm',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFFA3A3A3),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "QuicksandBold")),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: -1,
                          right: -20,
                          child: Image.asset(
                            'assets/logo/gold.png',
                            height: 48,
                            width: 80,
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 2.h,
                      ),
                      Stack(children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color(0xff5a5a5a),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 2.5.h,
                                      backgroundColor: MainColor.heartRed,
                                      child: CircleAvatar(
                                        radius: 2.2.h,
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            "assets/images/herry.png"),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: const Text('Samantha',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFFCCCCCC),
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "QuicksandBold")),
                                    ),
                                    Text(
                                        'Hi, I would like to inquire about an \napp design. Can you help me?',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFFffffff),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "QuicksandBold")),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('10:26pm',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFFA3A3A3),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "QuicksandBold")),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: -1,
                          right: -20,
                          child: Image.asset(
                            'assets/logo/silver.png',
                            height: 48,
                            width: 80,
                          ),
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ))
    ]));
  }
}
