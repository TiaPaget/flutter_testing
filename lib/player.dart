import 'package:flutter/material.dart';
import 'package:flutter_testing/circle_animation_controller.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class Player {
  final int id;
  final Offset position;
  final Color color;
  final CircleAnimationController animationController;

  Player(this.id, this.position, this.color, this.animationController);
  //animates the ripple using the package, uses animationSize from the default Flutter animation for sizing.
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
