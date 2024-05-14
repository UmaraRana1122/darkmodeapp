import 'package:darkmodeapp/screens/about_screen.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:darkmodeapp/widgets/my_inkwell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  TextEditingController textarea = TextEditingController();

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
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Icon(Icons.arrow_back_ios_new),
                ),
              ),
              Center(child: Image.asset("assets/icons/logo1.png")),
              SizedBox(height: 2.h),
              Text(
                'Registeration',
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp,
                  ),
                ),
              ),
              SizedBox(height: 4.h),
              SingleChildScrollView(
                child: Container(
                  width: 100.w,
                  height: MediaQuery.of(context).size.height * 0.70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: Color(0xff5a5a5a),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 3.h),
                      Container(
                        width: 90.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color(0xff676767),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Upload Your Photos',
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17.sp,
                                  ),
                                ),
                              ),
                              SizedBox(height: .5.h),
                              Text(
                                'Upload minimum of 2 Photos*',
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Color(0xffa3a3a3),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.sp,
                                  ),
                                ),
                              ),
                              SizedBox(height: 1.5.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // First Row with 2 containers
                                  Container(
                                    width: 165,
                                    height: 208,
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
                                    width: 165,
                                    height: 208,
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
                              SizedBox(height: 2.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Second Row with 3 containers
                                  Container(
                                    width: 105,
                                    height: 135,
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
                                    width: 105,
                                    height: 135,
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
                                    width: 105,
                                    height: 135,
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
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      InkWell(
                          onTap: () {
                            Get.to(AboutScreen());
                          },
                          child: buttonWidget(7, 90, "Next"))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
