import 'dart:math' as math;
import 'package:flutter/material.dart';

class Rotateanimation extends StatefulWidget {
  const Rotateanimation({super.key});

  @override
  State<Rotateanimation> createState() => _RotateanimationState();
}

class _RotateanimationState extends State<Rotateanimation>with TickerProviderStateMixin {
  double turns = 0.0;

  late final AnimationController animationController = AnimationController(
      duration: const Duration(milliseconds: 10), vsync: this)
    ..repeat();

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Stack(alignment: Alignment.center, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 200,),
                Image.asset('lib/icons/helicopter.png'),
              ],
            ),
            AnimatedBuilder(
              animation: animationController,
              builder: (context, child) {
                return Transform.rotate(
                  angle: animationController.value * 2 * math.pi,
                  child: child,
                );
              },
              child: Image.asset('lib/icons/roter.png'),
            ),
          ])),
    );
  }
}
