import 'package:flutter/material.dart';

class CircleAnimationController {
  late AnimationController controller;
  late Animation<double> animationSize;
  late Animation<double> animationRipple;

  CircleAnimationController({required TickerProvider vsync})
      : controller = AnimationController(
          duration: const Duration(seconds: 1),
          vsync: vsync,
        ) {
    animationSize = TweenSequence([
      TweenSequenceItem(tween: Tween<double>(begin: 20, end: 50), weight: 0.5),
      TweenSequenceItem(tween: Tween<double>(begin: 50, end: 40), weight: 0.5),
      TweenSequenceItem(tween: Tween<double>(begin: 40, end: 50), weight: 1),
    ]).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

    animationRipple = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeOut),
    );
  }
  void dispose() {
    controller.dispose();
  }
}
