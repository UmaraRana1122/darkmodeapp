import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:darkmodeapp/widgets/information_widget.dart';
import 'package:darkmodeapp/widgets/prefrence_widget.dart';
import 'package:darkmodeapp/widgets/setting_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SingleChildScrollView(
              child: Column(children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/logo/arrow.png",
                      height: 20,
                    ),
                    Spacer(),
                    Text(
                      'Settings',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp),
                      ),
                    ),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  width: 90.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff5d5d5d),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Push Notifications',
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                color: MainColor.lightBlack,
                                fontWeight: FontWeight.w700,
                                fontSize: 15.sp),
                          ),
                        ),
                        SettingWidget(text: "Chat"),
                        SettingWidget(text: "Like"),
                        SettingWidget(text: "Match"),
                        SettingWidget(text: "Luv Recieved"),
                        SizedBox(
                          height: .7.h,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  width: 90.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff5d5d5d),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My Information',
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                color: MainColor.lightBlack,
                                fontWeight: FontWeight.w700,
                                fontSize: 15.sp),
                          ),
                        ),
                        InfoWidget(text: "Phone Number"),
                        InfoWidget(text: "Email Address"),
                        InfoWidget(text: "Change Password"),
                        SizedBox(
                          height: .7.h,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  width: 90.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff5d5d5d),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About',
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                color: MainColor.lightBlack,
                                fontWeight: FontWeight.w700,
                                fontSize: 15.sp),
                          ),
                        ),
                        InfoWidget(text: "Privacy Policy"),
                        InfoWidget(text: "Terms of Use"),
                        SizedBox(
                          height: .7.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ))
    ]));
  }
}
