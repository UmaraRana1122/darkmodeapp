import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                        SizedBox(height: 4.h),
                        Container(
                          width: 90.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xff7a7a7a),
                          ),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'Sign up with',
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp),
                              ),
                            ),
                          )),
                        ),
                        SizedBox(height: 3.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/logo/fb.png",
                              height: 3.2.h,
                            ),
                            SizedBox(width: 3.w),
                            Image.asset(
                              "assets/logo/google.png",
                              height: 3.2.h,
                            ),
                            SizedBox(width: 3.w),
                            Image.asset(
                              "assets/logo/apple.png",
                              height: 4.h,
                            )
                          ],
                        ),
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
                                    'First Name',
                                    style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp),
                                    ),
                                  ),
                                  SizedBox(height: 1.5.h),
                                  TextFormField(
                                    // controller: firtname,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Jonathan";
                                      } else {
                                        return null;
                                      }
                                    },
                                    inputFormatters: [
                                      // FilteringTextInputFormatter.allow(
                                      //     RegExp(r'[a-zA-Z\s]')),
                                    ],
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.text,

                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      color: MainColor.colorBlack,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "QuicksandMedium",
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "Jonathan",
                                      hintStyle: TextStyle(
                                          color: Color(0xff7A7A7A),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16.sp),
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        borderSide: const BorderSide(
                                          color: MainColor.colorE6E6E6,
                                        ),
                                      ),
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
                                          color: MainColor.grey,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        borderSide: const BorderSide(
                                          color: MainColor.grey,
                                        ),
                                      ),
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
                                  SizedBox(height: 1.5.h),
                                  Text(
                                    'Last Name',
                                    style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp),
                                    ),
                                  ),
                                  SizedBox(height: 1.5.h),
                                  TextFormField(
                                    // controller: firtname,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Smith";
                                      } else {
                                        return null;
                                      }
                                    },
                                    inputFormatters: [
                                      // FilteringTextInputFormatter.allow(
                                      //     RegExp(r'[a-zA-Z\s]')),
                                    ],
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.text,

                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      color: MainColor.colorBlack,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "QuicksandMedium",
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "Smith",
                                      hintStyle: TextStyle(
                                          color: Color(0xff7A7A7A),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16.sp),
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        borderSide: const BorderSide(
                                          color: MainColor.grey,
                                        ),
                                      ),
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
                                          color: MainColor.grey,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        borderSide: const BorderSide(
                                          color: MainColor.grey,
                                        ),
                                      ),
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
                                  SizedBox(height: 1.5.h),
                                  Text(
                                    'This will not be displayed to other Users *',
                                    style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          color: Color(0xffA3A3A3),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp),
                                    ),
                                  ),
                                  SizedBox(height: 1.h),
                                  Text(
                                    'Type a referral code (if any)',
                                    style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp),
                                    ),
                                  ),
                                  SizedBox(height: 1.5.h),
                                  TextFormField(
                                    // controller: firtname,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Jonathan";
                                      } else {
                                        return null;
                                      }
                                    },
                                    inputFormatters: [
                                      // FilteringTextInputFormatter.allow(
                                      //     RegExp(r'[a-zA-Z\s]')),
                                    ],
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.text,

                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      // color: MainColor.colorBlack,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "QuicksandMedium",
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "Jonathan",
                                      hintStyle: TextStyle(
                                          color: Color(0xff7A7A7A),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16.sp),
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        borderSide: const BorderSide(
                                          color: MainColor.colorE6E6E6,
                                        ),
                                      ),
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
                                          color: MainColor.grey,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        borderSide: const BorderSide(
                                          color: MainColor.grey,
                                        ),
                                      ),
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
// body: Container(
//   alignment: Alignment.topCenter,
//   margin: const EdgeInsets.all(20),
//   child: SingleChildScrollView(
//     child: Container(
//       alignment: Alignment.topCenter,
//       child: Column(
//         children: [
//           const SizedBox(
//             height: 14,
//           ),
//           Image.asset(
//             "assets/logo/logo.png",
//             width: 170,
//             height: 140,
//           ),
//           const SizedBox(
//             height: 29,
//           ),
//           Container(
//               alignment: Alignment.centerLeft,
//               child: Text("first_name",
//                   // .tr,
//                   style: const TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w600,
//                       fontFamily: "QuicksandBold"))),
//           const SizedBox(
//             height: 8,
//           ),
//           TextFormField(
//             controller: firtname,
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return "Please enter first name";
//               } else {
//                 return null;
//               }
//             },
//             inputFormatters: [
//               // FilteringTextInputFormatter.allow(
//               //     RegExp(r'[a-zA-Z\s]')),
//             ],
//             textInputAction: TextInputAction.next,
//             keyboardType: TextInputType.text,
//             style: const TextStyle(
//               fontSize: 16,
//               fontStyle: FontStyle.normal,
//               // color: MainColor.colorBlack,
//               fontWeight: FontWeight.w400,
//               fontFamily: "QuicksandMedium",
//             ),
//             decoration: InputDecoration(
//               errorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(15.0),
//                 borderSide: const BorderSide(
//                   color: MainColor.colorE6E6E6,
//                 ),
//               ),
//               errorStyle: const TextStyle(
//                 fontStyle: FontStyle.normal,
//                 fontWeight: FontWeight.w400,
//                 fontFamily: "QuicksandRegular",
//                 color: MainColor.heartRed,
//               ),
//               focusedErrorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(15.0),
//                 borderSide: const BorderSide(
//                   color: MainColor.colorE6E6E6,
//                 ),
//               ),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(15.0),
//                 borderSide: const BorderSide(
//                   color: MainColor.colorE6E6E6,
//                 ),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(15.0),
//                 borderSide: const BorderSide(
//                   color: MainColor.colorE6E6E6,
//                 ),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(15.0),
//                 borderSide: const BorderSide(
//                   color: MainColor.colorE6E6E6,
//                 ),
//               ),
//               filled: true,
//               fillColor: MainColor.colorF9F9F9,
//             ),
//           ),
//           const SizedBox(
//             height: 15,
//           ),
//           Container(
//               alignment: Alignment.centerLeft,
//               child: Text("last_name",
//                   // .tr,
//                   style: const TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w600,
//                       fontFamily: "QuicksandBold"))),
//           const SizedBox(
//             height: 8,
//           ),
//           TextFormField(
//             controller: lastname,
//             validator: (value) {
//               if (value!.isEmpty ||
//                   !(RegExp('[a-zA-Z]')).hasMatch(value)) {
//                 return "Please enter last name";
//               } else {
//                 return null;
//               }
//             },
//             inputFormatters: [
//               // FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
//               // Allow only letters
//             ],
//             keyboardType: TextInputType.text,
//             style: const TextStyle(
//                 fontSize: 16,
//                 fontStyle: FontStyle.normal,
//                 // color: MainColor.colorBlack,
//                 fontWeight: FontWeight.w400,
//                 fontFamily: "QuicksandMedium"),
//             decoration: InputDecoration(
//               errorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                   borderSide:
//                       const BorderSide(color: MainColor.colorE6E6E6)),
//               errorStyle: const TextStyle(
//                 fontStyle: FontStyle.normal,
//                 fontWeight: FontWeight.w400,
//                 fontFamily: "QuicksandRegular",
//                 color: MainColor.heartRed,
//               ),
//               focusedErrorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                   borderSide:
//                       const BorderSide(color: MainColor.colorE6E6E6)),
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                   borderSide:
//                       const BorderSide(color: MainColor.colorE6E6E6)),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(15.0),
//                 borderSide: const BorderSide(
//                   color: MainColor.colorE6E6E6,
//                 ),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(15.0),
//                 borderSide: const BorderSide(
//                   color: MainColor.colorE6E6E6,
//                 ),
//               ),
//               filled: true,
//               fillColor: MainColor.colorF9F9F9,
//             ),
//           ),
//           const SizedBox(
//             height: 8,
//           ),
//           Container(
//             alignment: Alignment.centerLeft,
//             child: InkWell(
//                 onTap: () {
//                   // Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPasswordScreen()));
//                 },
//                 child: Text("this_will_not_be_displayed_to_other_users",
//                     // .tr,
//                     style: const TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w400,
//                         fontFamily: "QuicksandRegular",
//                         color: MainColor.colorGrey))),
//           ),
//           const SizedBox(
//             height: 15,
//           ),
//           Container(
//               alignment: Alignment.centerLeft,
//               child: Text("referal_code",
//                   // .tr,
//                   style: const TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w600,
//                       fontFamily: "QuicksandBold"))),
//           const SizedBox(
//             height: 8,
//           ),
//           TextFormField(
//             controller: referalcode,
//             keyboardType: TextInputType.text,
//             style: const TextStyle(
//                 fontSize: 16,
//                 fontStyle: FontStyle.normal,
//                 // color: MainColor.colorBlack,
//                 fontWeight: FontWeight.w400,
//                 fontFamily: "QuicksandMedium"),
//             decoration: InputDecoration(
//               errorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                   borderSide:
//                       const BorderSide(color: MainColor.colorE6E6E6)),
//               errorStyle: const TextStyle(
//                 fontStyle: FontStyle.normal,
//                 fontWeight: FontWeight.w400,
//                 fontFamily: "QuicksandRegular",
//                 color: MainColor.heartRed,
//               ),
//               focusedErrorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                   borderSide:
//                       const BorderSide(color: MainColor.colorE6E6E6)),
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                   borderSide:
//                       const BorderSide(color: MainColor.colorE6E6E6)),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(15.0),
//                 borderSide: const BorderSide(
//                   color: MainColor.colorE6E6E6,
//                 ),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(15.0),
//                 borderSide: const BorderSide(
//                   color: MainColor.colorE6E6E6,
//                 ),
//               ),
//               filled: true,
//               fillColor: MainColor.colorF9F9F9,
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           referrolError
//               ? Container(
//                   alignment: Alignment.topLeft,
//                   child: const Text(
//                     'Invalid referral code, Please enter valid code',
//                     style: TextStyle(
//                       fontStyle: FontStyle.normal,
//                       fontWeight: FontWeight.w400,
//                       fontFamily: "QuicksandRegular",
//                       color: MainColor.heartRed,
//                     ),
//                   ),
//                 )
//               : const SizedBox.shrink(),
//           referrolError == false
//               ? Container(
//                   padding: const EdgeInsets.only(top: 5),
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                       "Please enter your referral code here if you have (optional)",
//                       style: TextStyle(
//                           fontSize: 11,
//                           foreground: Paint()
//                             ..shader = const LinearGradient(
//                               colors: <Color>[
//                                 MainColor.colorFD6180,
//                                 MainColor.colorFE8155,
//                                 //add more color here.
//                               ],
//                             ).createShader(const Rect.fromLTWH(
//                                 0.0, 0.0, 200.0, 100.0)),
//                           fontWeight: FontWeight.w600,
//                           fontFamily: "QuicksandRegular")))
//               : const SizedBox.shrink(),
//         ],
//       ),
//     ),
//   ),
// ),
