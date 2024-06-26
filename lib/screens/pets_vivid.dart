import 'dart:async';

import 'package:darkmodeapp/screens/workout_vivid.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PetsVividScreen extends StatefulWidget {
  const PetsVividScreen({
    super.key,
  });

  @override
  State<PetsVividScreen> createState() => _PetsVividScreenState();
}

class _PetsVividScreenState extends State<PetsVividScreen> {
  String isChecked = "";
  List<String> petsList = <String>[
    "Don't have any",
    'Dog',
    'Cat',
    'Birds',
    'Fish',
    'Hamster',
    'Rabbit',
    'Other',
  ];
  String pets = 'Communist';

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
                        'Pets',
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  children: [
                                    SizedBox(height: 2.h),
                                    ListView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: petsList.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        final isSelected =
                                            petsList[index] == isChecked;
                                        return GestureDetector(
                                          onTap: () {
                                            // Handle tap here
                                            isChecked = petsList[index];
                                            setState(() {});
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Container(
                                              child: Card(
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      color: Color(0xffA3A3A3),
                                                      width: .7),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                child: Container(
                                                  height: 45,
                                                  decoration: BoxDecoration(
                                                    color: isSelected
                                                        ? MainColor.colorWhite
                                                        : Color(0xff676767),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(
                                                        width: 24,
                                                        height: 24,
                                                        child: Icon(
                                                          Icons.check,
                                                          color: isSelected
                                                              ? Color(
                                                                  0xffFF0000)
                                                              : Colors
                                                                  .transparent,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                          width:
                                                              8), // Add some space between icon and text
                                                      Text(
                                                        petsList[index],
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              "QuicksandMedium",
                                                          color: isSelected
                                                              ? MainColor
                                                                  .colorBlack
                                                              : Color(
                                                                  0xff9b9b9b),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              )),
                          SizedBox(
                            height: 3.h,
                          ),
                          InkWell(
                              onTap: () {
                                Get.to(WorkoutVividScreen());
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
}
