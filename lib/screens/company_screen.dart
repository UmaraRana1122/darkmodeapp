import 'dart:async';

import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CompanyScreen extends StatefulWidget {
  const CompanyScreen({
    super.key,
  });

  @override
  State<CompanyScreen> createState() => _CompanyScreenState();
}

class _CompanyScreenState extends State<CompanyScreen> {
  var companyname = TextEditingController();

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios_new),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Company',
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            Image.asset(
              "assets/logo/vividlogo.png",
              height: 9.3.h,
            ),
            SizedBox(height: 4.h),
            Stack(children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      width: 100.w,
                      height: 75.h,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                          color: Color(0xff5a5a5a)),
                      child: SingleChildScrollView(
                        child: Column(children: [
                          SizedBox(height: 3.h),
                          Container(
                              width: 90.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Color(0xff676767)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 17),
                                child: Column(
                                  children: [
                                    TextFormField(
                                      controller: companyname,
                                      validator: (value) {
                                        if (value!.isEmpty ||
                                            !(RegExp('[a-zA-Z]'))
                                                .hasMatch(value)) {
                                          return "Enter your company name here";
                                        } else {
                                          return null;
                                        }
                                      },
                                      keyboardType: TextInputType.emailAddress,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontStyle: FontStyle.normal,
                                          // color: MainColor.colorBlack,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "QuicksandMedium"),
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(15),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            borderSide: const BorderSide(
                                                color: MainColor.grey)),
                                        errorStyle: const TextStyle(
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "QuicksandRegular",
                                          color: MainColor.heartRed,
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            borderSide: const BorderSide(
                                                color: MainColor.grey)),
                                        hintText: 'Company Name',
                                        hintStyle: const TextStyle(
                                            fontSize: 18,
                                            fontStyle: FontStyle.normal,
                                            color: Color(0xFfA3A3A3),
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "QuicksandMedium"),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            borderSide: const BorderSide(
                                                color: MainColor.grey)),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(
                                            color: MainColor.grey,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          borderSide: const BorderSide(
                                            color: MainColor.grey,
                                          ),
                                        ),
                                      ),
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
                              child: buttonWidget(.7.h, 20.7.w, "Save")),
                        ]),
                      ))),
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
