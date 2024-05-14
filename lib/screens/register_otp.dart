import 'package:darkmodeapp/screens/register_screen.dart';
import 'package:darkmodeapp/screens/register_verify.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisterOtpScreen extends StatefulWidget {
  const RegisterOtpScreen({
    super.key,
  });

  @override
  State<RegisterOtpScreen> createState() => _RegisterOtpScreenState();
}

class _RegisterOtpScreenState extends State<RegisterOtpScreen> {
  String dialCode = "+91";
  var phoneNumberController = TextEditingController();
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

  int error = -1;
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
                                    'Mobile',
                                    style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp),
                                    ),
                                  ),
                                  SizedBox(height: 1.5.h),
                                  Container(
                                    padding: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        border:
                                            Border.all(color: MainColor.grey)),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        // SvgPicture.asset("assets/images/ic_phone.svg"),
                                        // SizedBox(
                                        //   width: 7,
                                        // ),
                                        Material(
                                          shape: const CircleBorder(),
                                          clipBehavior: Clip.antiAlias,
                                          // Optional, for better anti-aliasing
                                          color: Colors.transparent,
                                          child: InkWell(
                                              radius: 50,
                                              onTap: () {
                                                // _showCountryPicker();
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(9.0),
                                                child: Text(
                                                  dialCode,
                                                  style: const TextStyle(
                                                      fontSize: 14,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily:
                                                          "QuicksandMedium"),
                                                ),
                                              )),
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        Container(
                                          width: 1,
                                          height: 37,
                                          color: MainColor.colorWhite,
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Expanded(
                                          child: TextField(
                                            controller: phoneNumberController,
                                            maxLength: 11,
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
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "QuicksandMedium"),
                                            decoration: InputDecoration(
                                                errorBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius
                                                        .circular(25.0),
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
                                                border: InputBorder.none,
                                                // filled: true,
                                                // fillColor: MainColor.Color00AED9,
                                                hintStyle: const TextStyle(
                                                    color: MainColor.grey,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily:
                                                        "QuicksandMedium"),
                                                hintText: '1231321313'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      error == 0
                                          ? 'Please enter valid contact number'
                                          : error == 1
                                              ? 'Phone number must be of minimum 9 digits'
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
                        InkWell(
                            onTap: () {
                              Get.to(RegisterVerifyScreen());
                              if (phoneNumberController.text.isEmpty ||
                                  !(RegExp("[0-9]"))
                                      .hasMatch(phoneNumberController.text)) {
                                // "Enter Valid Contact Number";
                                error = 0;
                                setState(() {});
                              } else if (phoneNumberController.text.length <
                                  9) {
                                error = 1;
                                setState(() {});
                              } else {
                                // submitMobileNumber();
                              }
                              setState(() {});
                            },
                            child: buttonWidget(.7.h, 20.7.w, "Next")),
                      ]))),
            ])
          ],
        ),
      ),
    ));
  }
}
