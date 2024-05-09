import 'package:flutter/material.dart';

class MyInkWell extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final VoidCallback? onDoubleTap;
  final BorderRadius? borderRadius;
  final Color? splashColor;
  final ShapeBorder? shape;
  final double? radius;

  const MyInkWell(
      {super.key,
      required this.child,
      required this.onTap,
      this.onDoubleTap,
      this.borderRadius,
      this.splashColor,
      this.shape,
      this.radius});

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      color: Colors.transparent,
      shape: shape,
      child: InkWell(
        radius: radius,
        customBorder: shape,
        onDoubleTap: onDoubleTap,
        borderRadius: borderRadius ?? BorderRadius.circular(10),
        onTap: () {
          Future.delayed(const Duration(milliseconds: 180), () {
            onTap();
          });
        },
        splashFactory: InkRipple.splashFactory,
        child: child,
      ),
    );
  }
}
