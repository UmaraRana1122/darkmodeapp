import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingWidget extends StatefulWidget {
  final String text;

  const SettingWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  _SettingWidgetState createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                widget.text, // Use the text passed through the constructor
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
              Spacer(),
              FlutterSwitch(
                activeToggleColor: Colors.white,
                inactiveToggleColor: Colors.red,
                activeColor: Colors.red,
                inactiveColor: Colors.white,
                switchBorder: Border.all(color: Colors.red),
                toggleBorder: Border.all(color: Colors.red),
                height: 22,
                width: 46,
                toggleSize: 22,
                padding: 0,
                value: status,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
            ],
          ),
          Divider(
            color: Color(0xffA3A3A3),
          ),
        ],
      ),
    );
  }
}
