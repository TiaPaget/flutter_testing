import 'package:flutter/material.dart';

class CircleAnimationController {
  late AnimationController controller;
  late Animation<double> animationSize;

  CircleAnimationController({required TickerProvider vsync})
      : controller = AnimationController(
          duration: const Duration(seconds: 2),
          vsync: vsync,
        ) {
    animationSize = TweenSequence([
      TweenSequenceItem(tween: Tween<double>(begin: 0, end: 50), weight: 1),
      TweenSequenceItem(tween: Tween<double>(begin: 50, end: 40), weight: 1),
      TweenSequenceItem(tween: Tween<double>(begin: 40, end: 50), weight: 1),
    ]).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));
  }

  // Add a function body or move the code inside an existing class member.

  void dispose() {
    controller.dispose();
  }
}
