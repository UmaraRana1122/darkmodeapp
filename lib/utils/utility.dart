// ignore_for_file: file_names

import 'package:darkmodeapp/utils/main_color.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Utility {
  static bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(p);

    return regExp.hasMatch(em);
  }

  static progressLoadingDialog(BuildContext context, bool status) {
    if (status) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return Center(
                child: Image.asset(
              'assets/images/loading-gif.gif',
              height: 35,
              width: 35,
            ));
          });
      // return pr.show();
    } else {
      Navigator.pop(context);
      // return pr.hide();
    }
  }

  getToast(msg) {
    Fluttertoast.showToast(
      backgroundColor: MainColor.colorFE8155,
      msg: msg.toString(),
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      // backgroundColor: Colors.red,
      // textColor: Colors.white,
      // fontSize: 16.0
    );
  }
}
