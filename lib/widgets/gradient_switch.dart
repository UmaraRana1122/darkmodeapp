import 'package:flutter/material.dart';

class ControledExercise01 extends StatefulWidget {
  const ControledExercise01({Key? key}) : super(key: key);

  @override
  _ControledExercise01State createState() => _ControledExercise01State();
}

class _ControledExercise01State extends State<ControledExercise01>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Size> sizeAnimation;
  late Animation<double> circularAnimation;
  late Animation<Alignment> alignmentAnimation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 1,
      ),
    );
    sizeAnimation = Tween<Size>(
      begin: const Size(60, 60),
      end: const Size(120, 60),
    ).animate(animationController);
    circularAnimation = Tween<double>(
      begin: 60,
      end: 0,
    ).animate(animationController);
    alignmentAnimation = Tween<Alignment>(
      begin: Alignment.bottomRight,
      end: Alignment.topCenter,
    ).animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (animationController.isCompleted) {
          animationController.reverse();
        } else {
          animationController.forward();
        }
      },
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return Container(
            alignment: alignmentAnimation.value,
            padding: const EdgeInsets.all(16),
            child: Container(
              height: sizeAnimation.value.height,
              width: sizeAnimation.value.width,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(circularAnimation.value),
              ),
            ),
          );
        },
      ),
    );
  }
}
