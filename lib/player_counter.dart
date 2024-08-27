import 'dart:math';
import 'player.dart';
import 'package:flutter/material.dart';
import 'circle_animation_controller.dart';
//ripple animation

class PlayerCounter extends StatefulWidget {
  const PlayerCounter({super.key});

  @override
  State<PlayerCounter> createState() => _PlayerCounterState();
}

class _PlayerCounterState extends State<PlayerCounter>
    with TickerProviderStateMixin {
  int _playerCount = 0;
  Offset? _tapPosition;
  final List<Player> _players = [];
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
          _players.add(Player(
              _playerCount, _tapPosition!, _getRandomColor(), controller));
        });
      },
      onDoubleTapDown: (details) {
        // remove the double tapped object
      },
      child: Container(
        color: Colors.transparent,
        child: Stack(
          children: <Widget>[
            ..._players.map((player) => player.buildAnimatedCircle()),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    for (var player in _players) {
      player.dispose();
    }
    super.dispose();
  }
}
