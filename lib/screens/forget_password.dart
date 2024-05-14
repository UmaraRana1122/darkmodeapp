// ignore_for_file: file_names

import 'package:darkmodeapp/screens/register_screen.dart';
import 'package:darkmodeapp/screens/verification_code_password.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:darkmodeapp/widgets/my_inkwell.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'dart:convert' as convert;

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  var email = TextEditingController();
  final formKey = GlobalKey<FormState>();
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
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              "assets/logo/arrow.png",
                              height: 24,
                            ),
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
                                height: 68.h,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      topRight: Radius.circular(40),
                                    ),
                                    color: Color(0xff5a5a5a)),
                                child: Column(children: [
                                  SizedBox(height: 4.h),
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
                                            Text("Enter Your Email".tr,
                                                style: GoogleFonts.quicksand(
                                                    textStyle: TextStyle(
                                                        color:
                                                            Color(0xffffffff),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16.sp))),
                                            SizedBox(height: 1.5.h),
                                            TextFormField(
                                              controller: email,
                                              validator: (value) {
                                                if (value!.isEmpty ||
                                                    !(RegExp(
                                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))
                                                        .hasMatch(value)) {
                                                  return "Please enter valid email address";
                                                } else {
                                                  return null;
                                                }
                                              },
                                              keyboardType:
                                                  TextInputType.emailAddress,
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
                                                        horizontal: 25),
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
                                              height: 2.h,
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
                                          ],
                                        ),
                                      )),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        Get.to(VerificationCodePassword());
                                      },
                                      child: buttonWidget(
                                          7, 90, "Reset Password")),
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

  // dialogSuccess(BuildContext context, String msg) {
  //   showDialog(
  //     barrierDismissible: true,
  //     context: context,
  //     builder: (_) => AlertDialog(
  //       shape: const RoundedRectangleBorder(
  //           borderRadius: BorderRadius.all(Radius.circular(32.0))),
  //       contentPadding: const EdgeInsets.only(top: 10.0),
  //       content: SizedBox(
  //         width: 300.0,
  //         child: SingleChildScrollView(
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             crossAxisAlignment: CrossAxisAlignment.stretch,
  //             mainAxisSize: MainAxisSize.min,
  //             children: <Widget>[
  //               Container(
  //                 margin: const EdgeInsets.all(20),
  //                 child: SingleChildScrollView(
  //                   child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.center,
  //                     children: [
  //                       const SizedBox(
  //                         height: 20,
  //                       ),
  //                       Image.asset(
  //                         "assets/images/img_success.png",
  //                         height: 81,
  //                         width: 77,
  //                       ),
  //                       const SizedBox(
  //                         height: 31,
  //                       ),
  //                       Container(
  //                         margin: const EdgeInsets.only(left: 20, right: 20),
  //                         child: Text(
  //                           msg,
  //                           textAlign: TextAlign.center,
  //                           style: const TextStyle(
  //                               fontSize: 18,
  //                               color: Color(0xFF000000),
  //                               fontWeight: FontWeight.w300,
  //                               fontFamily: "QuicksandLight"),
  //                         ),
  //                       ),
  //                       const SizedBox(
  //                         height: 30,
  //                       ),
  //                       AppButton(
  //                           btnRadius: 5,
  //                           btnHeight: 50,
  //                           btnWidth: 150,
  //                           textStyle: const TextStyle(
  //                               fontSize: 17,
  //                               fontWeight: FontWeight.w400,
  //                               fontFamily: "QuicksandRegular",
  //                               color: Color(0xFFFFFFFF)),
  //                           onPressed: () {
  //                             Navigator.push(
  //                                 context,
  //                                 MaterialPageRoute(
  //                                     builder: (context) =>
  //                                         VerificationCodePassword(
  //                                           email: email.text.toString(),
  //                                         )));
  //                             setState(() {});
  //                           },
  //                           name: "done"),
  //                       const SizedBox(
  //                         height: 20,
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
}
