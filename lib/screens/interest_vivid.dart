import 'package:darkmodeapp/models/profile_public_user.dart';
import 'package:darkmodeapp/screens/join_screen.dart';
import 'package:darkmodeapp/screens/join_vivid.dart';
import 'package:darkmodeapp/screens/your_interest.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:darkmodeapp/widgets/my_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class InterestScreen2 extends StatefulWidget {
  const InterestScreen2({
    Key? key,
  }) : super(key: key);

  @override
  State<InterestScreen2> createState() => _InterestScreen2State();
}

class _InterestScreen2State extends State<InterestScreen2> {
  String isChecked = "";
  List<String> interestList = <String>[
    "Photography",
    'Singing',
    'Chill',
    'Music',
    'Art',
    'Cooking',
    'Gym',
    'Sports',
  ];
  bool? selected;

  String goal = 'I want Children';
  TextEditingController textarea = TextEditingController();
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
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        "assets/logo/arrow.png",
                        height: 22,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Your Interest',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(height: 2.h),
              Center(
                  child: Image.asset(
                "assets/logo/vividlogo.png",
                height: 9.3.h,
              )),
              SizedBox(
                height: 4.h,
              ),
              Stack(children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        width: 100.w,
                        height: MediaQuery.of(context).size.height * 0.75,
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
                                color: Color(0xff676767),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(0, 1),
                                    blurRadius: 3,
                                    spreadRadius: 0,
                                  ),
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.09),
                                    offset: Offset(0, 6),
                                    blurRadius: 6,
                                    spreadRadius: 0,
                                  ),
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.05),
                                    offset: Offset(0, 13),
                                    blurRadius: 8,
                                    spreadRadius: 0,
                                  ),
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.01),
                                    offset: Offset(0, 22),
                                    blurRadius: 9,
                                    spreadRadius: 0,
                                  ),
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.0),
                                    offset: Offset(0, 35),
                                    blurRadius: 10,
                                    spreadRadius: 0,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    GridView.builder(
                                      itemCount: interestList.length,
                                      controller: ScrollController(
                                          keepScrollOffset: false),
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      scrollDirection: Axis.vertical,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        childAspectRatio: 2.7,
                                      ),
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isChecked = interestList[index];
                                            });
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: isChecked ==
                                                        interestList[index]
                                                    ? Colors.white
                                                    : null,
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                border: Border.all(
                                                    color: MainColor.grey),
                                              ),
                                              child: SizedBox(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 38,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    if (isChecked ==
                                                        interestList[index])
                                                      Icon(
                                                        Icons.check,
                                                        color:
                                                            MainColor.heartRed,
                                                      ),
                                                    const SizedBox(width: 4),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        interestList[index],
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily:
                                                              "QuicksandSemiBold",
                                                          color: isChecked ==
                                                                  interestList[
                                                                      index]
                                                              ? MainColor
                                                                  .colorBlack // Blue color when selected
                                                              : Colors
                                                                  .grey, // Default color when not selected
                                                        ),
                                                      ),
                                                    ),
                                                  ],
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
                                Get.to(RelationsGoals());
                              },
                              child: buttonWidget(7, 90, "Save")),

                          // Padding(
                          //   padding: const EdgeInsets.all(17.0),
                          //   child: AppButton(
                          //     isLoading: isLoading,
                          //     onPressed: () {
                          //       updateInterestsApi();
                          //       setState(() {});
                          //     },
                          //     name: "Save",
                          //   ),
                          // ),
                        ]))),
              ])
            ],
          ),
        ),
      ),
    );
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
