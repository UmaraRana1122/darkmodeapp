// ignore_for_file: file_names

import 'package:darkmodeapp/screens/new_password_screen.dart';
import 'package:darkmodeapp/screens/register_screen.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';
import 'dart:convert' as convert;

//ignore: must_be_immutable
class VerificationCodePassword extends StatefulWidget {
  @override
  State<VerificationCodePassword> createState() =>
      _VerificationCodePasswordState();
}

class _VerificationCodePasswordState extends State<VerificationCodePassword> {
  var otp = TextEditingController();
  final formKey = GlobalKey<FormState>();
  int error = -1;
  int secondsRemaining = 59;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(
          child: Form(
              key: formKey,
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
                  bottom: false,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          child: Image.asset(
                            "assets/logo/arrow.png",
                            height: 24,
                          ),
                        ),
                      ),
                      Image.asset(
                        "assets/logo/vividlogo.png",
                        height: 86,
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        'Reset Password',
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            color: MainColor.colorWhite,
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Stack(children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                width: 100.w,
                                height:
                                    MediaQuery.of(context).size.height * 0.70,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      topRight: Radius.circular(40),
                                    ),
                                    color: Color(0xff5a5a5a)),
                                child: Column(children: [
                                  SizedBox(height: 1.h),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      'Enter the verification code we have sent to your registered email address',
                                      style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                          color: MainColor.colorWhite,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16.5.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: 90.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        color: Color(0xff676767),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.1),
                                            offset: Offset(0, 1),
                                            blurRadius: 3,
                                            spreadRadius: 0,
                                          ),
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.09),
                                            offset: Offset(0, 6),
                                            blurRadius: 6,
                                            spreadRadius: 0,
                                          ),
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.05),
                                            offset: Offset(0, 13),
                                            blurRadius: 8,
                                            spreadRadius: 0,
                                          ),
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.01),
                                            offset: Offset(0, 22),
                                            blurRadius: 9,
                                            spreadRadius: 0,
                                          ),
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.0),
                                            offset: Offset(0, 35),
                                            blurRadius: 10,
                                            spreadRadius: 0,
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Enter verification Code".tr,
                                                style: GoogleFonts.quicksand(
                                                    textStyle: TextStyle(
                                                        color:
                                                            Color(0xffffffff),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16.sp))),
                                            SizedBox(height: 1.5.h),
                                            TextFormField(
                                              controller: otp,
                                              maxLength: 4,
                                              buildCounter:
                                                  (BuildContext context,
                                                          {required int
                                                              currentLength,
                                                          int? maxLength,
                                                          required bool
                                                              isFocused}) =>
                                                      null,
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp("[0-9]")),
                                              ],
                                              keyboardType:
                                                  TextInputType.number,
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  fontStyle: FontStyle.normal,
                                                  // color: MainColor.colorBlack,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily:
                                                      "QuicksandMedium"),
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 20),
                                                errorBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                    borderSide:
                                                        const BorderSide(
                                                            color: MainColor
                                                                .grey)),
                                                errorStyle: const TextStyle(
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily:
                                                      "QuicksandRegular",
                                                  color: MainColor.heartRed,
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25.0),
                                                        borderSide:
                                                            const BorderSide(
                                                                color: MainColor
                                                                    .grey)),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                    borderSide:
                                                        const BorderSide(
                                                            color: MainColor
                                                                .grey)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  borderSide: const BorderSide(
                                                    color: MainColor.grey,
                                                  ),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  borderSide: const BorderSide(
                                                    color: MainColor.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Resend Code in ',

                                                      // .tr,
                                                      style:
                                                          GoogleFonts.quicksand(
                                                        textStyle: TextStyle(
                                                            color: Color(
                                                                0xffA3A3A3),
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 13.sp),
                                                      ),
                                                    ),
                                                    const WidgetSpan(
                                                        child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2),
                                                    )),
                                                    TextSpan(
                                                        text:
                                                            '${secondsRemaining}s',
                                                        style: GoogleFonts
                                                            .quicksand(
                                                          textStyle: TextStyle(
                                                              color: MainColor
                                                                  .colorWhite,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 13.sp),
                                                        ),
                                                        recognizer:
                                                            TapGestureRecognizer()
                                                              ..onTap = () {
                                                                Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                const RegisterScreen()));
                                                              }),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                error == 0
                                                    ? 'Please enter otp'
                                                    : error == 1
                                                        ? 'Otp must be of 4 digits'
                                                        : '',
                                                style: const TextStyle(
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily:
                                                      "QuicksandRegular",
                                                  color: MainColor.heartRed,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        Get.to(NewpasswordScreen());
                                      },
                                      child: buttonWidget(7, 90, "Verify")),
                                  // Padding(
                                  //   padding: const EdgeInsets.symmetric(
                                  //       horizontal: 20),
                                  //   child: AppButton(
                                  //       btnHeight: 60,
                                  //       btnWidth:
                                  //           MediaQuery.of(context).size.width,
                                  //       textStyle: const TextStyle(
                                  //           fontSize: 18,
                                  //           fontWeight: FontWeight.w600,
                                  //           fontFamily: "QuicksandSemiBold",
                                  //           color: Color(0xFFFFFFFF)),
                                  //       onPressed: () {
                                  //         String otptext = otp.text;
                                  //         if (otptext.isEmpty) {
                                  //           error = 0;
                                  //           setState(() {});
                                  //         } else if (otptext.length < 4) {
                                  //           error = 1;
                                  //           setState(() {});
                                  //         } else {
                                  //           verifyEmailForgotPassword();
                                  //           setState(() {});
                                  //         }
                                  //       },
                                  //       name: "verify"),
                                  // ),
                                ]))),
                      ])
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
