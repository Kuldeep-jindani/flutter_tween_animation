import 'dart:math' as math;
import 'package:flutter/material.dart';

class TwinIcon extends StatefulWidget {
  const TwinIcon({super.key});

  @override
  State<TwinIcon> createState() => _TwinIconState();
}

class _TwinIconState extends State<TwinIcon> with TickerProviderStateMixin {

  double targetValue = 250;

   @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder(
          key: ValueKey(1),
          tween: Tween<double>(begin: 0, end: 1),
          duration: Duration(milliseconds: 500),
          builder: (context, value, child) => Opacity(
              opacity: value,
              child: child,
          ),
          child:  IconButton(
              iconSize: 250,
              color: Colors.red,
              icon: Icon(Icons.flutter_dash_rounded),
              onPressed: () {
                targetValue = targetValue == 100 ? 250 : 100;
              })),
    );
  }

}
