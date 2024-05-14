// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:darkmodeapp/screens/education_screen.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:darkmodeapp/widgets/my_inkwell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert' as convert;

//ignore: must_be_immutable
class SelectHeightScreen extends StatefulWidget {
  Function? onupdate;
  String? name;
  bool status;

  SelectHeightScreen({Key? key, this.onupdate, this.name, required this.status})
      : super(key: key);

  @override
  State<SelectHeightScreen> createState() => _SelectHeightScreenState();
}

class _SelectHeightScreenState extends State<SelectHeightScreen> {
  final double _kPickerSheetHeight = 300.0;
  String isChecked = "";
  String height = '13';
  var selectItem;
  int value = 0;

  final items = [
    "3’0”  (91 Cm)",
    "3’1”  (94 Cm)",
    "3’2”  (97 Cm)",
    "3’3”  (100 Cm)",
    "3’4”  (103 Cm)",
    "3’5”  (106 Cm)",
    "3’6”  (109 Cm)",
    "3’7”  (112 Cm)",
    "3’8”  (115 Cm)",
    "3’9”  (118 Cm)",
    "3’10”  (121 Cm)",
    "3’11”  (124 Cm)",
    "4'0”  (121 Cm)",
    "4’1”  (124 Cm)",
    "4’2”  (127 Cm)",
    "4’3”  (129 Cm)",
    "4’4”  (132 Cm)",
    "4’5”  (134 Cm)",
    "4’6”  (137 Cm)",
    "4’7”  (139 Cm)",
    "4’8”  (142 Cm)",
    "4’9”  (144 Cm)",
    "4’10”  (147 Cm)",
    "4’11”  (149 Cm)",
    "5'0”  (152 Cm)",
    "5’1”  (154 Cm)",
    "5’2”  (157 Cm)",
    "5’3”  (160 Cm)",
    "5’4”  (162 Cm)",
    "5’5”  (165 Cm)",
    "5’6”  (167 Cm)",
    "5’7”  (170 Cm)",
    "5’8”  (172 Cm)",
    "5’9”  (175 Cm)",
    "5’10”  (177 Cm)",
    "5’11”  (180 Cm)",
    "6'0”  (182 Cm)",
    "6’1”  (185 Cm)",
    "6’2”  (187 Cm)",
    "6’3”  (190 Cm)",
    "6’4”  (193 Cm)",
    "6’5”  (195 Cm)",
    "6’6”  (198 Cm)",
    "6’7”  (200 Cm)",
    "6’8”  (203 Cm)",
    "6’9”  (205 Cm)",
    "6’10”  (208 Cm)",
    "6’11”  (210 Cm)",
    "7'0”  (213 Cm)",
    "7’1”  (216 Cm)",
    "7’2”  (219 Cm)",
    "7’3”  (222 Cm)",
    "7’4”  (225 Cm)",
    "7’5”  (228 Cm)",
    "7’6”  (231 Cm)",
    "7’7”  (234 Cm)",
    "7’8”  (237 Cm)",
    "7’9”  (240 Cm)",
    "7’10”  (243 Cm)",
    "7’11”  (216 Cm)",
    "8'0”  (243 Cm)",
  ];

  @override
  void initState() {
    super.initState();
    if (items.contains(widget.name)) {
      selectItem = widget.name;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey.shade800,
                Colors.grey.shade900,
                Colors.grey.shade900,
              ]),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          "assets/logo/arrow.png",
                          height: 24,
                        ),
                      ))),
              Center(child: Image.asset("assets/icons/logo1.png")),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Complete your Profile',
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Stack(children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        width: 100.w,
                        height: MediaQuery.of(context).size.height * 0.71,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            ),
                            color: Color(0xff5a5a5a)),
                        child: Column(children: [
                          SizedBox(height: 3.h),
                          Container(
                              width: 90.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Color(0xff676767),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(0, 1),
                                    blurRadius: 3,
                                    spreadRadius: 0,
                                  ),
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.09),
                                    offset: Offset(0, 6),
                                    blurRadius: 6,
                                    spreadRadius: 0,
                                  ),
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.05),
                                    offset: Offset(0, 13),
                                    blurRadius: 8,
                                    spreadRadius: 0,
                                  ),
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.01),
                                    offset: Offset(0, 22),
                                    blurRadius: 9,
                                    spreadRadius: 0,
                                  ),
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.0),
                                    offset: Offset(0, 35),
                                    blurRadius: 10,
                                    spreadRadius: 0,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'How Tall are you?',
                                      style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17.sp),
                                      ),
                                    ),
                                    SizedBox(height: 2.h),
                                    Container(
                                      height: _kPickerSheetHeight,
                                      child: DefaultTextStyle(
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF9A9A9A),
                                          fontFamily: "QuicksandSemiBold",
                                        ),
                                        child: GestureDetector(
                                          // Blocks taps from propagating to the modal sheet and popping.
                                          onTap: () {},
                                          child: SafeArea(
                                            top: false,
                                            child: _buildCupertinoPicker(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          SizedBox(
                            height: 2.h,
                          ),
                          MyInkWell(
                              onTap: () {
                                Get.to(EducationScreen());
                              },
                              child: buttonWidget(6, 90, "Next")),
                          SizedBox(
                            height: 1.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Container(
                              height: 6.h,
                              width: 90.w,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  "Skip",
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ]))),
              ])
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCupertinoPicker() {
    return CupertinoPicker(
      scrollController: FixedExtentScrollController(),
      magnification: 1.0,
      itemExtent: 45,
      looping: false,
      diameterRatio: 20,
      backgroundColor: Colors.transparent,
      children: items
          .map((item) => Center(
                child: Text(
                  item,
                  textAlign: TextAlign.center, // Align text to center
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white, // Set text color to white
                    fontFamily: "QuicksandSemiBold",
                  ),
                ),
              ))
          .toList(),
      onSelectedItemChanged: (index) {
        setState(() => value = index);
        selectItem = items[index];
      },
      // Wrap selected item inside a container with white border
      selectionOverlay: Container(
        decoration: BoxDecoration(
          // color: Color(0xff767676),
          border: Border.all(color: Colors.white), // White border
          borderRadius:
              BorderRadius.circular(30), // Adjust border radius as needed
        ),
      ),
    );
  }
}
