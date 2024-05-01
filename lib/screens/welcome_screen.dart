import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:darkmodeapp/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SafeArea(
            child: Column(
              children: [
                Image.asset(
                  'assets/logo/vivid.png',
                  height: 10.h,
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  'Welcome to VIVID',
                  style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  'Please follow our privacy policy',
                  style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                        color: Color(0xff7A7A7A),
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                textWidget(),
                textWidget(),
                textWidget(),
                textWidget(),
                Spacer(),
                buttonWidget(.8.h, 9.w, "I agree"),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
