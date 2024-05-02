import 'dart:async';

import 'package:darkmodeapp/screens/register_screen.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
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
  int secondsRemaining = 30;
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
                                  Form(
                                    key: formKey,
                                    child: PinCodeTextField(
                                      appContext: context,
                                      pastedTextStyle: const TextStyle(
                                        color: Color(0xff254d71),
                                        fontWeight: FontWeight.bold,
                                      ),
                                      length: 6,
                                      obscureText: false,
                                      obscuringCharacter: '*',
                                      autoFocus: false,
                                      enablePinAutofill: false,
                                      animationType: AnimationType.fade,
                                      validator: (v) {
                                        return null;
                                      },
                                      pinTheme: PinTheme(
                                          activeColor: MainColor.colorFE8155,
                                          shape: PinCodeFieldShape.box,
                                          errorBorderColor:
                                              const Color(0xFFB7B7B7),
                                          selectedColor:
                                              const Color(0xFFB7B7B7),
                                          selectedFillColor:
                                              const Color(0xFFB7B7B7),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          fieldHeight: 65,
                                          fieldWidth: 47,
                                          activeFillColor: Colors.white,
                                          inactiveColor:
                                              const Color(0xFFB7B7B7),
                                          inactiveFillColor: Colors.white),
                                      cursorColor: MainColor.colorFE8155,
                                      animationDuration:
                                          const Duration(milliseconds: 300),
                                      enableActiveFill: false,
                                      errorAnimationController: errorController,
                                      controller: otpcontroller,
                                      keyboardType: TextInputType.number,
                                      boxShadows: const [
                                        BoxShadow(
                                          offset: Offset(0, 1),
                                          color: Colors.white,
                                          blurRadius: 1,
                                        )
                                      ],
                                      onCompleted: (v) {
                                        debugPrint("Completed");
                                      },
                                      onChanged: (value) {
                                        debugPrint(value);
                                        setState(() {
                                          currentText = value;
                                        });
                                      },
                                      beforeTextPaste: (text) {
                                        debugPrint("Allowing to paste $text");
                                        return true;
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 20),
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
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Already have an account?  ',

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
                                            text: 'Log In',
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
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 3.h,
                        ),
                      ]))),
            ])
          ],
        ),
      ),
    ));
  }
}
