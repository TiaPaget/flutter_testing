import 'package:flutter/material.dart';
import 'package:flutter_testing/circle_animation_controller.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class Player {
  final int id;
  final Offset position;
  final Color color;
  final Color greyscaleColor;
  final CircleAnimationController animationController;

  Player(this.id, this.position, this.color, this.greyscaleColor, this.animationController);
  //animates the ripple using the package, uses animationSize from the default Flutter animation for sizing.

  //greyscale colour from the randomised player colour
  static Color getGreyscaleColor(Color color) {
    double luminance =
        0.299 * color.red + 0.587 * color.green + 0.114 * color.blue;
    int greyValue = luminance.round();
    return Color.fromARGB(color.alpha, greyValue, greyValue, greyValue);
  }

  Widget buildAnimatedCircle() {
    return AnimatedBuilder(
      animation: animationController.controller,
      builder: (context, child) {
        return Positioned(
          left: position.dx - animationController.animationSize.value / 2,
          top: position.dy - animationController.animationSize.value / 2,
          child: RippleAnimation(
            delay: const Duration(milliseconds: 0),
            minRadius: 35,
            color: color,
            ripplesCount: 5,
            duration: const Duration(milliseconds: 700),
            repeat: false,
            child: Container(
              width: animationController.animationSize.value,
              height: animationController.animationSize.value,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
            ),
          ),
        );
      },
    );
  }

  void dispose() {
    animationController.dispose();
  }
}
