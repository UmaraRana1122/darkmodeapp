import 'dart:async';

import 'package:darkmodeapp/screens/gender_screen.dart';
import 'package:darkmodeapp/screens/register_screen.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisterVerifyScreen extends StatefulWidget {
  const RegisterVerifyScreen({
    super.key,
  });

  @override
  State<RegisterVerifyScreen> createState() => _RegisterVerifyScreenState();
}

class _RegisterVerifyScreenState extends State<RegisterVerifyScreen> {
  final formKey = GlobalKey<FormState>();
  int error = -1;
  String currentText = "";
  int secondsRemaining = 59;
  bool enableResend = false;
  late Timer timer;
  var otpcontroller = TextEditingController();
  bool isLoading = false;
  StreamController<ErrorAnimationType>? errorController;

  // void _showCountryPicker() async {
  //   final country = await showCountryPickerSheet(
  //     cancelWidget: const SizedBox.shrink(),
  //     context,
  //   );
  //   if (country != null) {
  //     setState(() {
  //       dialCode = country.callingCode;
  //     });
  //   }
  // }
  void starttimer() {
    timer = Timer.periodic(
        const Duration(
          seconds: 1,
        ), (_) {
      if (secondsRemaining != 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        setState(() {
          enableResend = true;
          timer.cancel();
        });
      }
    });
  }

  void _resendCode() {
    //other code here
    setState(() {
      // signUpOtpAuth();
    });
  }

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
                                    'Enter the verification code we have sent to your mobile number',
                                    style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17.sp),
                                    ),
                                  ),
                                  SizedBox(height: 1.5.h),
                                  TextField(
                                    controller: otpcontroller,
                                    maxLength: 4,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                          RegExp("[0-9]")),
                                    ],
                                    buildCounter: (BuildContext context,
                                            {required int currentLength,
                                            int? maxLength,
                                            required bool isFocused}) =>
                                        null,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        // color: MainColor.colorBlack,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "QuicksandMedium"),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 20),
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
                                  Container(
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
                                        fontFamily: "QuicksandRegular",
                                        color: MainColor.heartRed,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Resend Code in ',

                                            // .tr,
                                            style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                                  color: Color(0xffA3A3A3),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 13.sp),
                                            ),
                                          ),
                                          const WidgetSpan(
                                              child: Padding(
                                            padding: EdgeInsets.only(left: 2),
                                          )),
                                          TextSpan(
                                              text: '${secondsRemaining}s',
                                              style: GoogleFonts.quicksand(
                                                textStyle: TextStyle(
                                                    color: MainColor.colorWhite,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 13.sp),
                                              ),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
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
                          height: 3.h,
                        ),
                        InkWell(
                            onTap: () {
                              Get.to(GenderScreen());
                            },
                            child: buttonWidget(.7.h, 20.7.w, "Verify")),
                      ]))),
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
