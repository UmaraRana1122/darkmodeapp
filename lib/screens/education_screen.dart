import 'dart:async';

import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({
    super.key,
  });

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  String isChecked = "";
  List<String> purposeList = <String>[
    'Basic',
    'Secondary School',
    'College',
    'University'
  ];
  String gender = 'Basic';

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
                  child: Icon(Icons.arrow_back_ios_new),
                )),
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
                      height: 71.h,
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
                                color: Color(0xff676767)),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Your Education ',
                                    style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17.sp),
                                    ),
                                  ),
                                  SizedBox(height: 1.5.h),
                                  ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: purposeList.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      final isSelected =
                                          purposeList[index] == isChecked;
                                      return GestureDetector(
                                        onTap: () {
                                          // Handle tap here
                                          isChecked = purposeList[index];
                                          setState(() {});
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            child: Card(
                                              elevation: 0,
                                              shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    color: Color(0xffA3A3A3),
                                                    width: .7),
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                              child: Container(
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: isSelected
                                                      ? MainColor.colorWhite
                                                      : Color(0xff676767),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      width: 24,
                                                      height: 24,
                                                      child: Icon(
                                                        Icons.check,
                                                        color: isSelected
                                                            ? Color(0xffFF0000)
                                                            : Colors
                                                                .transparent,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                        width:
                                                            8), // Add some space between icon and text
                                                    Text(
                                                      purposeList[index],
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily:
                                                            "QuicksandMedium",
                                                        color: isSelected
                                                            ? MainColor
                                                                .colorBlack
                                                            : Color(0xff9b9b9b),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 3.h,
                        ),
                        InkWell(
                            onTap: () {
                              // Get.to(DOBScreen());
                            },
                            child: buttonWidget(.7.h, 20.7.w, "Next")),
                        SizedBox(
                          height: 1.h,
                        ),
                        Container(
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
                        )
                      ]))),
            ])
          ],
        ),
      ),
    ));
  }

  dialogSuccess(BuildContext context, String msg) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (_) => AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        contentPadding: const EdgeInsets.only(top: 10.0),
        content: SizedBox(
          width: 300.0,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          "assets/images/img_success.png",
                          height: 81,
                          width: 77,
                        ),
                        const SizedBox(
                          height: 31,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            msg,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 18,
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w300,
                                fontFamily: "QuicksandLight"),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
