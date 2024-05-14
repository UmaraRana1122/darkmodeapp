import 'package:darkmodeapp/screens/selfie2.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReadyForSelfie1Screen extends StatefulWidget {
  const ReadyForSelfie1Screen({Key? key}) : super(key: key);

  @override
  State<ReadyForSelfie1Screen> createState() => _ReadyForSelfie1ScreenState();
}

class _ReadyForSelfie1ScreenState extends State<ReadyForSelfie1Screen> {
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(onTap: () {
                        Navigator.pop(context);
                      },
                        child: Image.asset(
                          "assets/logo/arrow.png",
                          height: 20,
                        ),
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
                      width: 200,
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
                            Text(
                              textAlign: TextAlign.center,
                              'Let’s Get Ready For Selfie 1',
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
                              textAlign: TextAlign.center,
                              'Hold up 3 fingers \nnext to your face',
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
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff555555),
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
                      height: 3.h,
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(ReadyForSelfie2Screen());
                        },
                        child: buttonWidget(7, 90, "Capture"))
                  ]),
            ),
          ),
        ),
      ))
    ]));
  }
}
