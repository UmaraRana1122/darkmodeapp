import 'package:animated_toggle/animated_toggle.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  int click = 1;
  int secondVExIndex = 0;
  int secondHExIndex = 0;
  int lastHExIndex = 0;
  int lastVExIndex = 0;

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
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SingleChildScrollView(
              child: Column(children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/logo1.png",
                      height: 3.5.h,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Text(
                      '324.6',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          color: MainColor.colorWhite,
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/icons/vivid1.png",
                      height: 2.5.h,
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Image.asset(
                      "assets/images/tri.png",
                      height: 2.5.h,
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Image.asset(
                  "assets/images/heart.png",
                  height: 240,
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  '324.6',
                  style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                      color: MainColor.colorWhite,
                      fontWeight: FontWeight.w600,
                      fontSize: 17.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 60,
                        width: 190,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xffCCCCCC),
                              Color(0xff666666),
                              Color(0xffCCCCCC),
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Invitation Code',
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                  color: MainColor.colorBlack,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17.sp,
                                ),
                              ),
                            ),
                            Text(
                              '12454641',
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                  color: MainColor.colorWhite,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.5.sp,
                                ),
                              ),
                            ),
                          ],
                        )),
                    Container(
                        height: 63,
                        width: 190,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xffff0000),
                              Color(0xff990000),
                              Color(0xffff0000),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Direct Invite',
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                color: MainColor.colorWhite,
                                fontWeight: FontWeight.w600,
                                fontSize: 17.sp,
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                AnimatedHorizontalToggle(
                  taps: const [
                    'Love Received',
                    'Invite Result',
                  ],
                  // write you taps names
                  width: MediaQuery.of(context).size.width - 41,
                  height: 48,
                  duration: const Duration(milliseconds: 100),
                  initialIndex: 0,
                  showPrefixIcon: true,

                  background: Colors.white,
                  activeColor: Colors.deepPurple,
                  activeTextStyle: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                      color: MainColor.colorWhite,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                    ),
                  ),
                  inActiveTextStyle: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                      color: MainColor.colorBlack,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                    ),
                  ),
                  horizontalPadding: 0,
                  verticalPadding: 0,
                  activeHorizontalPadding: 0,
                  activeVerticalPadding: 0,
                  radius: 15,
                  activeButtonRadius: 15,
                  onChange: (int currentIndex, int targetIndex) {
                    setState(() {
                      secondHExIndex = currentIndex;
                    });
                  },
                  showActiveButtonColor: true,
                  local: 'en',
                )
              ]),
            ),
          ),
        ),
      ))
    ]));
  }
}
