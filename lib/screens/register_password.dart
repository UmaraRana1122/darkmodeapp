import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisterPasswordScreen extends StatefulWidget {
  const RegisterPasswordScreen({super.key});

  @override
  State<RegisterPasswordScreen> createState() => _RegisterPasswordScreenState();
}

class _RegisterPasswordScreenState extends State<RegisterPasswordScreen> {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var username = TextEditingController();
  String? userName;
  bool _isObscure = true;
  bool validUserName = false;
  bool validEmail = false;
  final formKey = GlobalKey<FormState>();
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
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Icon(Icons.arrow_back_ios_new),
                )),
            Center(child: Image.asset("assets/icons/logo1.png")),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'Registeration',
              style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Stack(children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      width: 100.w,
                      height: 71.h,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                          color: Color(0xff5a5a5a)),
                      child: Column(children: [
                        SizedBox(height: 3.h),
                        Container(
                            width: 90.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Color(0xff676767)),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Username',
                                    style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp),
                                    ),
                                  ),
                                  SizedBox(height: 1.5.h),
                                  TextFormField(
                                    controller: username,
                                    textInputAction: TextInputAction.next,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Please enter a username";
                                      } else if (value.length < 4) {
                                        return "Username must be at least 4 characters";
                                      } else {
                                        return null;
                                      }
                                    },
                                    keyboardType: TextInputType.text,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        // color: MainColor.colorBlack,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "QuicksandMedium"),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 20),
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
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          borderSide: const BorderSide(
                                              color: MainColor.grey)),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
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
                                  validUserName
                                      ? Container(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          alignment: Alignment.topLeft,
                                          child: const Text(
                                            'username already exists',
                                            style: TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "QuicksandRegular",
                                              color: MainColor.heartRed,
                                            ),
                                          ),
                                        )
                                      : const SizedBox.shrink(),
                                  const SizedBox(
                                    height: 14,
                                  ),
                                  Text(
                                    'This can not be changed later. This is also your Referral code',
                                    style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          color: Color(0xff9e9e9e),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.5.sp),
                                    ),
                                  ),
                                  SizedBox(height: 1.5.h),
                                  Text(
                                    'Email',
                                    style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp),
                                    ),
                                  ),
                                  SizedBox(height: 1.5.h),
                                  TextFormField(
                                    controller: emailcontroller,
                                    textInputAction: TextInputAction.next,
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
                                    keyboardType: TextInputType.emailAddress,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        // color: MainColor.colorBlack,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "QuicksandMedium"),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 20),
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
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          borderSide: const BorderSide(
                                              color: MainColor.grey)),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
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
                                  validEmail
                                      ? Container(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          alignment: Alignment.topLeft,
                                          child: const Text(
                                            'email already exists',
                                            style: TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "QuicksandRegular",
                                              color: MainColor.heartRed,
                                            ),
                                          ),
                                        )
                                      : const SizedBox.shrink(),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    'Password',
                                    style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp),
                                    ),
                                  ),
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
                                    textInputAction: TextInputAction.done,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        // color: MainColor.colorBlack,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "QuicksandMedium"),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 20),
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
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _isObscure = !_isObscure;
                                          });
                                        },
                                        child: _isObscure
                                            ? const Icon(
                                                Icons.visibility_off_outlined,
                                                size: 24,
                                                color: MainColor.grey,
                                              )
                                            : const Icon(
                                                Icons.visibility_outlined,
                                                size: 24,
                                                color: MainColor.grey,
                                              ),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          borderSide: const BorderSide(
                                              color: MainColor.grey)),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
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
                        buttonWidget(.7.h, 20.7.w, "Next"),
                      ]))),
            ])
          ],
        ),
      ),
    ));
  }
}
