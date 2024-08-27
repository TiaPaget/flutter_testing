import 'dart:math';
import 'package:flutter/material.dart';
import 'circle_animation_controller.dart'; // Import the new controller
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class PlayerCounter extends StatefulWidget {
  const PlayerCounter({super.key});

  @override
  State<PlayerCounter> createState() => _PlayerCounterState();
}

class _PlayerCounterState extends State<PlayerCounter>
    with TickerProviderStateMixin {
  int _playerCount = 0;
  Offset? _tapPosition;
  final List<Widget> _players = [];
  final Random _random = Random();
  //late CircleAnimationController _controller;

  Color _getRandomColor() {
    return Color.fromARGB(
      255, //alpha
      _random.nextInt(156) + 100, //red
      _random.nextInt(156) + 100, //green
      _random.nextInt(156) + 100, //blue
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressStart: (details) {
        setState(() {
          _tapPosition = details.localPosition;
          _playerCount++;
          print("Players: $_playerCount");

          final controller = CircleAnimationController(vsync: this);
          _players.add(_buildAnimatedCircle(
              _tapPosition!, _getRandomColor(), controller));
          controller.controller.forward(from: 0);
        });
      },
      onDoubleTapDown: (details) {
        // remove the double tapped object
        
      },
      child: Container(
        color: Colors.transparent,
        child: Stack(
          children: <Widget>[
            ..._players,
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedCircle(
      Offset position, Color color, CircleAnimationController controller) {
    return AnimatedBuilder(
      animation: controller.controller,
      builder: (context, child) {
        return Positioned(
          left: position.dx - controller.animationSize.value / 2,
          top: position.dy - controller.animationSize.value / 2,
          child: RippleAnimation(
            delay: const Duration(milliseconds: 0),
            minRadius: 35,
            color: color,
            ripplesCount: 5,
            duration: const Duration(milliseconds: 700),
            repeat: false,
            child: Container(
              width: controller.animationSize.value,
              height: controller.animationSize.value,
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

  @override
  void dispose() {
    for (var player in _players) {
      if (player is AnimatedBuilder) {
        (player.animation as AnimationController).dispose();
      }
    }
    super.dispose();
  }
}
