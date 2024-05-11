import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget subscriptionWidget(
  String text,
  String text1,
  String text2,
  String text3,
  String text4,
  String text5,
  String text6,
) {
  return Container(
    width: 90.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Color(0xff535353),
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
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buttonWidget(6, 90, text),
          SizedBox(
            height: 1.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text1,
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                      color: MainColor.colorWhite,
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp),
                ),
              ),
              Text(
                text2,
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                      color: MainColor.colorWhite,
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp),
                ),
              ),
            ],
          ),
          Divider(
            color: Color(0xffA3A3A3),
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              Text(
                text3,
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                      color: MainColor.colorWhite,
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp),
                ),
              ),
              Spacer(),
              Text(
                text4,
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                      color: MainColor.colorWhite,
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp),
                ),
              ),
              Text(
                text5,
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                      color: MainColor.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp),
                ),
              ),
            ],
          ),
          Divider(
            color: Color(0xffA3A3A3),
          ),
          SizedBox(
            height: 1.h,
          ),
          Text(
            text6,
            style: GoogleFonts.quicksand(
              textStyle: TextStyle(
                  color: MainColor.colorWhite,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp),
            ),
          ),
          Divider(
            color: Color(0xffA3A3A3),
          ),
        ],
      ),
    ),
  );
}
