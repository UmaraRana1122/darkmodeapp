import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:darkmodeapp/widgets/information_widget.dart';
import 'package:darkmodeapp/widgets/setting_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileVerificationScreen extends StatefulWidget {
  const ProfileVerificationScreen({Key? key}) : super(key: key);

  @override
  State<ProfileVerificationScreen> createState() =>
      _ProfileVerificationScreenState();
}

class _ProfileVerificationScreenState extends State<ProfileVerificationScreen> {
  bool status1 = false;

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
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        "assets/logo/arrow.png",
                        height: 20,
                      ),
                    ),
                    Image.asset(
                      "assets/logo/vividlogo.png",
                      height: 86,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff5d5d5d),
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
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/logo/verify.png",
                              height: 55,
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              'Profile Verification',
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: MainColor.colorWhite,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17.sp),
                              ),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              'Let’s Get Verified',
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: MainColor.colorWhite,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.sp),
                              ),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              'Upload 2 Selfies',
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: MainColor.colorWhite,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 195,
                              height: 260,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xffffffff),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/logo/camera.png",
                                    height: 24,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              'Selfie 1',
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: MainColor.colorWhite,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 195,
                              height: 260,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xffffffff),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/logo/camera.png",
                                    height: 24,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              'Selfie 2',
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: MainColor.colorWhite,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    buttonWidget(7, 90, "Continue")
                  ]),
            ),
          ),
        ),
      ))
    ]));
  }
}
