import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget preferWidget(
  String isImage,
  String text,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Row(
          children: [
            Image.asset(
              isImage,
              height: 18,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    color: Color(0xffA3A3A3),
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp),
              ),
            ),
            Spacer(),
            Image.asset(
              "assets/logo/lock.png",
              height: 18,
            ),
            SizedBox(
              height: 1.h,
            )
          ],
        ),
        SizedBox(
          height: .5.h,
        ),
        Divider(
          color: Color(0xffA3A3A3),
        ),
        SizedBox(
          height: 1.h,
        ),
      ],
    ),
  );
}
