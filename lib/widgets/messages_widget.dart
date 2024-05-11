import 'package:darkmodeapp/utils/main_color.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget messagesWidget(
  String text,
  String text1,
  String text2,
) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 2.2.h,
              backgroundImage: AssetImage("assets/images/henna.png"),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          // Wrap the Row with Expanded
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(text,
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFCCCCCC),
                          fontWeight: FontWeight.w700,
                          fontFamily: "QuicksandBold")),
                  Spacer(),
                  CircleAvatar(
                    radius: 1.4.h,
                    backgroundColor: MainColor.heartRed,
                    child: CircleAvatar(
                      radius: 1.2.h,
                      backgroundColor: Color(0xff5a5a5a),
                      child: Text(text1,
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFffffff),
                              fontWeight: FontWeight.w600,
                              fontFamily: "QuicksandBold")),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: .3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(text2,
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFffffff),
                          fontWeight: FontWeight.w400,
                          fontFamily: "QuicksandBold")),
                  Text('10:26pm',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFffffff),
                          fontWeight: FontWeight.w400,
                          fontFamily: "QuicksandBold")),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
Widget readmessageWidget(
  String isImage,
  String text,
  String text1,
){
  return Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 2.5.h,
                                          backgroundColor: MainColor.heartRed,
                                          child: CircleAvatar(
                                            radius: 2.3.h,
                                            backgroundColor: Color(0xff5a5a5a),
                                            child: CircleAvatar(
                                              radius: 1.9.h,
                                              backgroundColor:
                                                  MainColor.heartRed,
                                              backgroundImage: AssetImage(
                                                 isImage),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      // Wrap the Row with Expanded
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(text,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xFFffffff),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "QuicksandBold")),
                                          SizedBox(
                                            height: .3.h,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(text1,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0xFFffffff),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily:
                                                          "QuicksandBold")),
                                              Text('10:26pm',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0xFFA3A3A3),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily:
                                                          "QuicksandBold")),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
}