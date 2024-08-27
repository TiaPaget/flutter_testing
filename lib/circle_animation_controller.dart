import 'package:flutter/material.dart';

class CircleAnimationController {
  late AnimationController controller;
  late Animation<double> animationSize;

  CircleAnimationController({required TickerProvider vsync})
      : controller = AnimationController(
          duration: const Duration(milliseconds: 300),
          vsync: vsync,
        ) {
    animationSize = Tween<double>(begin: 0, end: 50).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeIn,
      ),
    );
    controller.forward(from: 0);
  }
  void dispose() {
    controller.dispose();
  }
}
