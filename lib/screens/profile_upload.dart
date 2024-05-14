import 'package:darkmodeapp/screens/about_screen.dart';
import 'package:darkmodeapp/screens/preferences.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:darkmodeapp/widgets/my_inkwell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileUploadScreen extends StatefulWidget {
  const ProfileUploadScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileUploadScreen> createState() => _ProfileUploadScreenState();
}

class _ProfileUploadScreenState extends State<ProfileUploadScreen> {
  TextEditingController textarea = TextEditingController();
  bool status = false;
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
            ],
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                Row(
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
                    Text(
                      'Profile',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 3.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // First Row with 2 containers
                              Container(
                                width: 250,
                                height: 322,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                ),
                                child: Center(
                                    child: Image.asset(
                                  "assets/logo/upload.png",
                                  height: 3.h,
                                )),
                              ),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Container(
                                    width: 115,
                                    height: 156,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                        child: Image.asset(
                                      "assets/logo/upload.png",
                                      height: 3.h,
                                    )),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: 115,
                                    height: 156,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                        child: Image.asset(
                                      "assets/logo/upload.png",
                                      height: 3.h,
                                    )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Second Row with 3 containers
                              Container(
                                width: 117,
                                height: 156,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                ),
                                child: Center(
                                    child: Image.asset(
                                  "assets/logo/upload.png",
                                  height: 3.h,
                                )),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 117,
                                height: 156,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                ),
                                child: Center(
                                    child: Image.asset(
                                  "assets/logo/upload.png",
                                  height: 3.h,
                                )),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 117,
                                height: 156,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                ),
                                child: Center(
                                    child: Image.asset(
                                  "assets/logo/upload.png",
                                  height: 3.h,
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.width * 0.87,
                        decoration: BoxDecoration(
                            color: Color(0xff4b4b4b),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Visibility',
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: MainColor.grey2,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'By unselecting, other users will not \nbe able to see you.',
                                    style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                        color: MainColor.colorWhite,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                  FlutterSwitch(
                                    activeToggleColor: Colors.white,
                                    inactiveToggleColor: Colors.red,
                                    activeColor: Colors.red,
                                    inactiveColor: Colors.white,
                                    switchBorder: Border.all(color: Colors.red),
                                    toggleBorder: Border.all(color: Colors.red),
                                    height: 22,
                                    width: 46,
                                    toggleSize: 22,
                                    padding: 0,
                                    value: status,
                                    onToggle: (val) {
                                      setState(() {
                                        status = val;
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      InkWell(
                          onTap: () {
                            Get.to(PreferenceScreen());
                          },
                          child: buttonWidget(6, 87, "Next"))
                    ],
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
