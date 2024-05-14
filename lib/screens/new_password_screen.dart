// ignore_for_file: file_names

import 'package:darkmodeapp/screens/verification_code_password.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'dart:convert' as convert;

//ignore: must_be_immutable
class NewpasswordScreen extends StatefulWidget {
  NewpasswordScreen({Key? key}) : super(key: key);

  @override
  State<NewpasswordScreen> createState() => _NewpasswordScreenState();
}

class _NewpasswordScreenState extends State<NewpasswordScreen> {
  bool _isObscure = true;
  bool confirmPass = true;
  final formKey = GlobalKey<FormState>();
  var passwordcontroller = TextEditingController();
  var confirmpasswordcontroller = TextEditingController();

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
                                            Text("Enter a new Password".tr,
                                                style: GoogleFonts.quicksand(
                                                    textStyle: TextStyle(
                                                        color:
                                                            Color(0xffffffff),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16.sp))),
                                            SizedBox(height: 1.5.h),
                                            TextFormField(
                                              controller: passwordcontroller,
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return "Please enter new password";
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
                                                suffixIcon: IconButton(
                                                  icon: _isObscure
                                                      ? const Icon(
                                                          Icons.visibility_off,
                                                          size: 24,
                                                          color: MainColor.grey,
                                                        )
                                                      : const Icon(
                                                          Icons.visibility,
                                                          size: 24,
                                                          color: MainColor.grey,
                                                        ),
                                                  onPressed: () {
                                                    setState(() {
                                                      _isObscure = !_isObscure;
                                                    });
                                                  },
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
                                            Text("Confirm Password".tr,
                                                style: GoogleFonts.quicksand(
                                                    textStyle: TextStyle(
                                                        color:
                                                            Color(0xffffffff),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16.sp))),
                                            SizedBox(height: 1.5.h),
                                            TextFormField(
                                              controller:
                                                  confirmpasswordcontroller,
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return "Please enter confirm password";
                                                } else if (value.length < 6) {
                                                  return "Password must be atleast 6 characters long";
                                                }
                                                {
                                                  if (passwordcontroller.text !=
                                                      confirmpasswordcontroller
                                                          .text) {
                                                    return "Password Do Not Match";
                                                  }
                                                  return null;
                                                }
                                              },
                                              keyboardType: TextInputType.text,
                                              obscureText: confirmPass,
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
                                                suffixIcon: IconButton(
                                                  icon: confirmPass
                                                      ? const Icon(
                                                          Icons.visibility_off,
                                                          size: 24,
                                                          color: MainColor.grey,
                                                        )
                                                      : const Icon(
                                                          Icons.visibility,
                                                          size: 24,
                                                          color: MainColor.grey,
                                                        ),
                                                  onPressed: () {
                                                    setState(() {
                                                      confirmPass =
                                                          !confirmPass;
                                                    });
                                                  },
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
                                          7, 90, "Change Password")),
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
