import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:darkmodeapp/widgets/prefrence_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double _value = 0.0;

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
                        Row(
                          children: [
                            Text(
                              'Chat',
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.sp),
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Men',
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Color(0xffCCCCCC),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.sp),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "assets/logo/arrow1.png",
                              color: Colors.white,
                              height: 12,
                            ),
                          ],
                        ),
                        Divider(
                          color: Color(0xffA3A3A3),
                        ),
                        SizedBox(
                          height: .7.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Distance Preference',
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.sp),
                              ),
                            ),
                            Spacer(),
                            Text(
                              '145 Km',
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Color(0xffCCCCCC),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.sp),
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          value: _value,
                          min: 0.0,
                          max: 100.0,
                          activeColor: Colors.red,
                          inactiveColor: Colors.grey,
                          thumbColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          },
                        ),
                        Text(
                          'Age Preference',
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w700,
                                fontSize: 15.sp),
                          ),
                        ),
                        Slider(
                          value: _value,
                          min: 0.0,
                          max: 100.0,
                          activeColor: Colors.red,
                          inactiveColor: Colors.grey,
                          thumbColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      buttonWidget(7, 60.w, "Subscribe to Unlock Preference"),
                ),
                SizedBox(
                  height: 1.5.h,
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
                        preferWidget("assets/logo/gender.png", "Gender"),
                        preferWidget("assets/logo/age.png", "Age"),
                        preferWidget("assets/logo/height.png", "Height"),
                        preferWidget("assets/logo/edu.png", "Education"),
                        preferWidget("assets/logo/children.png", "Children"),
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
