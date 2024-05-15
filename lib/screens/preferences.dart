import 'package:darkmodeapp/screens/settings.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:darkmodeapp/widgets/my_inkwell.dart';
import 'package:darkmodeapp/widgets/prefrence_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PreferenceScreen extends StatefulWidget {
  const PreferenceScreen({Key? key}) : super(key: key);

  @override
  State<PreferenceScreen> createState() => _PreferenceScreenState();
}

class _PreferenceScreenState extends State<PreferenceScreen> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            MyInkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Image.asset(
                                "assets/logo/arrow.png",
                                height: 20,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Preferences',
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
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          width: 90.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xff5d5d5d),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Show me',
                                      style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      'Men',
                                      style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                          color: Color(0xffCCCCCC),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      "assets/logo/arrow1.png",
                                      color: Colors.white,
                                      height: 12,
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Color(0xffA3A3A3),
                                ),
                                SizedBox(
                                  height: .7.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Distance Preference',
                                      style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      '145 Km',
                                      style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                          color: Color(0xffCCCCCC),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Slider(
                                  value: _value,
                                  min: 0.0,
                                  max: 100.0,
                                  activeColor: Colors.red,
                                  inactiveColor: Colors.grey,
                                  thumbColor: Colors.white,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  },
                                ),
                                Text(
                                  'Age Preference',
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ),
                                Slider(
                                  value: _value,
                                  min: 0.0,
                                  max: 100.0,
                                  activeColor: Colors.red,
                                  inactiveColor: Colors.grey,
                                  thumbColor: Colors.white,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Get.to(SettingsScreen());
                              // showGenderSelectionDialog(context);
                            },
                            child: buttonWidget(
                              7,
                              60.w,
                              "Subscribe to Unlock Preference",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        Container(
                          width: 90.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xff5d5d5d),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                preferWidget(
                                    "assets/logo/gender.png", "Gender"),
                                preferWidget("assets/logo/age.png", "Age"),
                                preferWidget(
                                    "assets/logo/height.png", "Height"),
                                preferWidget(
                                    "assets/logo/edu.png", "Education"),
                                preferWidget(
                                    "assets/logo/children.png", "Children"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// showGenderSelectionDialog(BuildContext context) {
//   String isChecked = "";
//   List<String> sexList = <String>[
//     'Straight',
//     'Gay',
//     'Bisexual',
//     'Other',
//   ];
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: Text('Select Gender'),
//         content: SingleChildScrollView(
//           child: ListView.builder(
//             physics: const NeverScrollableScrollPhysics(),
//             shrinkWrap: true,
//             itemCount: sexList.length,
//             itemBuilder: (BuildContext context, int index) {
//               final isSelected = sexList[index] == isChecked;
//               return GestureDetector(
//                 onTap: () {
//                   isChecked = sexList[index];
//                   Navigator.of(context)
//                       .pop(); // Close the dialog after selection
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.all(3.0),
//                   child: Container(
//                     child: Card(
//                       elevation: 0,
//                       shape: RoundedRectangleBorder(
//                         side: const BorderSide(
//                           color: Color(0xffA3A3A3),
//                           width: .7,
//                         ),
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                       child: Container(
//                         height: 45,
//                         decoration: BoxDecoration(
//                           color: isSelected
//                               ? MainColor.colorWhite
//                               : Color(0xff676767),
//                           borderRadius: BorderRadius.circular(25),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             SizedBox(
//                               width: 24,
//                               height: 24,
//                               child: Icon(
//                                 Icons.check,
//                                 color: isSelected
//                                     ? Color(0xffFF0000)
//                                     : Colors.transparent,
//                               ),
//                             ),
//                             SizedBox(width: 8),
//                             Text(
//                               sexList[index],
//                               style: TextStyle(
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w500,
//                                 fontFamily: "QuicksandMedium",
//                                 color: isSelected
//                                     ? MainColor.colorBlack
//                                     : Color(0xff9b9b9b),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       );
//     },
//   );
// }
