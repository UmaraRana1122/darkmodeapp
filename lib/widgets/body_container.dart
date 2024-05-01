import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget rowWidget(
  String image,
  String text,
  String image2,
  String text2,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Container(
          width: 42.w,
          decoration: BoxDecoration(
              color: Color(0xff4e4e4e), borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  image,
                  height: 2.h,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  text,
                  style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp),
                  ),
                )
              ],
            ),
          ),
        ),
        Spacer(),
        Container(
          width: 45.w,
          decoration: BoxDecoration(
              color: Color(0xff4e4e4e), borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  image2,
                  height: 2.h,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  text2,
                  style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
