// ignore_for_file: empty_catches, file_names

import 'dart:developer';
import 'dart:io';

import 'package:darkmodeapp/screens/forget%20_username.dart';
import 'package:darkmodeapp/screens/forget_password.dart';
import 'package:darkmodeapp/screens/home_screen.dart';
import 'package:darkmodeapp/screens/register_screen.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:darkmodeapp/widgets/my_inkwell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'dart:convert' as convert;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var usernamecontroller = TextEditingController();
  var paswordcontroller = TextEditingController();
  bool _isObscure = true;
  String deviceid = "";
  String devicetype = "";

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
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
                              horizontal: 12, vertical: 8),
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
                        'Login to your account',
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
                                    MediaQuery.of(context).size.height * 0.67,
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
                                            Text("Username".tr,
                                                style: GoogleFonts.quicksand(
                                                    textStyle: TextStyle(
                                                        color:
                                                            Color(0xffffffff),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16.sp))),
                                            SizedBox(height: 1.5.h),
                                            TextFormField(
                                              controller: usernamecontroller,
                                              validator: (value) {
                                                if (value!.isEmpty ||
                                                    !(RegExp(r'^[a-zA-Z0-9]+$'))
                                                        .hasMatch(value)) {
                                                  return "Please enter a valid username";
                                                } else {
                                                  return null;
                                                }
                                              },
                                              keyboardType: TextInputType.text,
                                              onChanged: (text) {
                                                // _scrollToPosition();
                                                setState(() {});
                                              },
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                color: MainColor.colorBlack,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "QuicksandMedium",
                                              ),
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 20),
                                                errorBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  borderSide: const BorderSide(
                                                    color:
                                                        MainColor.colorE6E6E6,
                                                  ),
                                                ),
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
                                                      BorderRadius.circular(
                                                          25.0),
                                                  borderSide: const BorderSide(
                                                    color: MainColor.grey,
                                                  ),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  borderSide: const BorderSide(
                                                    color: MainColor.grey,
                                                  ),
                                                ),
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
                                            SizedBox(height: 1.5.h),
                                            Container(
                                              alignment: Alignment.centerRight,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const ForgetUserName()));
                                                    FocusScope.of(context)
                                                        .unfocus();
                                                  },
                                                  child: Text(
                                                      "Forgot Username?".tr,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              "QuicksandMedium",
                                                          foreground: Paint()
                                                            ..shader =
                                                                const LinearGradient(
                                                              colors: <Color>[
                                                                MainColor.grey1,
                                                                MainColor.grey2,
                                                                //add more color here.
                                                              ],
                                                            ).createShader(const Rect
                                                                    .fromLTWH(
                                                                    0.0,
                                                                    0.0,
                                                                    200.0,
                                                                    100.0))))),
                                            ),
                                            Text("Password".tr,
                                                style: GoogleFonts.quicksand(
                                                    textStyle: TextStyle(
                                                        color:
                                                            Color(0xffffffff),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16.sp))),
                                            SizedBox(height: 1.5.h),
                                            TextFormField(
                                              controller: paswordcontroller,
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return "Please enter correct password";
                                                } else if (value.length < 6) {
                                                  return "Password must be atleast 6 characters long";
                                                } else {
                                                  return null;
                                                }
                                              },
                                              keyboardType: TextInputType.text,
                                              obscureText: _isObscure,
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
                                                                    .colorE6E6E6)),
                                                suffixIcon: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      _isObscure = !_isObscure;
                                                    });
                                                  },
                                                  child: _isObscure
                                                      ? const Icon(
                                                          Icons
                                                              .visibility_off_outlined,
                                                          size: 24,
                                                          color: MainColor
                                                              .colorE6E6E6,
                                                        )
                                                      : const Icon(
                                                          Icons
                                                              .visibility_outlined,
                                                          size: 24,
                                                          color: MainColor
                                                              .colorE6E6E6,
                                                        ),
                                                ),
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
                                            SizedBox(height: 1.5.h),
                                            Container(
                                              alignment: Alignment.centerRight,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const ForgetPassword()));
                                                    FocusScope.of(context)
                                                        .unfocus();
                                                  },
                                                  child: Text(
                                                      "Forgot Password?".tr,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              "QuicksandMedium",
                                                          foreground: Paint()
                                                            ..shader =
                                                                const LinearGradient(
                                                              colors: <Color>[
                                                                MainColor.grey1,
                                                                MainColor.grey2,
                                                                //add more color here.
                                                              ],
                                                            ).createShader(const Rect
                                                                    .fromLTWH(
                                                                    0.0,
                                                                    0.0,
                                                                    200.0,
                                                                    100.0))))),
                                            ),
                                          ],
                                        ),
                                      )),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  MyInkWell(
                                      onTap: () {
                                        Get.to(HomeScreen());
                                      },
                                      child: buttonWidget(7, 90, "Login")),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Don’t have an account? ',
                                          style: GoogleFonts.quicksand(
                                            textStyle: TextStyle(
                                                color: Color(0xffA3A3A3),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.sp),
                                          ),
                                        ),
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          RegisterScreen()));
                                            },
                                            child: Text('Register here',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily:
                                                        "QuicksandMedium",
                                                    foreground: Paint()
                                                      ..shader =
                                                          const LinearGradient(
                                                        colors: <Color>[
                                                          MainColor.grey1,
                                                          MainColor.grey2,
                                                          //add more color here.
                                                        ],
                                                      ).createShader(const Rect
                                                              .fromLTWH(
                                                              0.0,
                                                              0.0,
                                                              200.0,
                                                              100.0))))),
                                      ]),
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
