import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget textWidget() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Colors.red,
          radius: 1.9.h,
          child: CircleAvatar(
            radius: 1.7.h,
            backgroundColor: Color(0xff303030),
            child: Icon(
              Icons.check,
              color: Colors.red,
            ),
          ),
        ),
        SizedBox(
          width: 3.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lorem Ipsum',
              style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp),
              ),
            ),
            SizedBox(
              height: .4.h,
            ),
            Text(
              'Lorem Ipsum is simply dummy \ntext of the printing and typesetting',
              style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    color: Color(0xff7A7A7A),
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
