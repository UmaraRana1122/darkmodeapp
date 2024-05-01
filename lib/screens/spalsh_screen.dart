import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    bool isUserAuthorized = false;
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
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                //   Image.asset(
                //     "assets/logo/dark.png",
                //     height: 2.h,
                //   ),
                //   Switch(
                //     value: isUserAuthorized,
                //     onChanged: (value) {
                //       setState(() {
                //         isUserAuthorized = value;
                //       });
                //     },
                //     activeTrackColor: Color(0xffFFFFFF),
                //     activeColor: Color(0xff002065),
                //   ),
                // ]),
                Spacer(),
                Image.asset(
                  'assets/logo/Logo.png',
                  height: 25.h,
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  height: 7.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xffe40202),
                          Color(0xff9c0100),
                          Color(0xff9c0100),
                          Color(0xffca0201),
                        ]),
                  ),
                  child: Center(
                    child: Text(
                      'Create Account',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 17.sp),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text.rich(TextSpan(
                    text: 'Already have an account?  ',
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                          color: Color(0xff7A7A7A),
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp),
                    ),
                    children: [
                      TextSpan(
                        text: 'Log In',
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        ),
                      )
                    ])),
                SizedBox(
                  height: 6.h,
                ),
              ]),
        ),
      ),
    ));
  }
}
