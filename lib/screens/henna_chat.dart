import 'dart:ui';

import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/my_inkwell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HennaChatScreen extends StatefulWidget {
  const HennaChatScreen({Key? key}) : super(key: key);

  @override
  State<HennaChatScreen> createState() => _HennaChatScreenState();
}

class _HennaChatScreenState extends State<HennaChatScreen> {
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
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              "assets/logo/arrow.png",
                              height: 22,
                            ),
                          ),
                          Spacer(),
                          CircleAvatar(
                            radius: 2.h,
                            backgroundColor: MainColor.heartRed,
                            child: CircleAvatar(
                              radius: 1.8.h,
                              backgroundColor: Colors.white,
                              backgroundImage:
                                  AssetImage("assets/images/henna.png"),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hannah Balboa',
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp),
                                ),
                              ),
                              Text(
                                'Online',
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
                              SizedBox(
                                height: .4.h,
                              ),
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
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
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
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
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
                              SizedBox(
                                height: .4.h,
                              ),
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
                      SizedBox(
                        height: 2.h,
                      ),
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
                              SizedBox(
                                height: .4.h,
                              ),
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
