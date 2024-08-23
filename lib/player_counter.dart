import 'dart:math';

import 'package:flutter/material.dart';

class PlayerCounter extends StatefulWidget {
  const PlayerCounter({super.key});

  @override
  State<PlayerCounter> createState() => _PlayerCounterState();
}

class _PlayerCounterState extends State<PlayerCounter> {
  int _playerCount = 0;
  Offset? _tapPosition;

  final List<Widget> _players = [];

  final Random _random = Random();

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
          _players.add(
            //adding the circles to the _players list
            Positioned(
              //positioning the circles based on the tap location
              left: _tapPosition!.dx - 25,
              top: _tapPosition!.dy - 25,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  //test style should display a red circle
                  color: _getRandomColor(),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          );
        });
      },
      onDoubleTapDown: (details) {
        setState(() {
          Offset tapPosition = details.localPosition;

          //iterate through the player list
          for (int i = 0; i < _players.length; i++) {
            Positioned circle = _players[i] as Positioned;

            //circles position
            double circleLeft = circle.left!;
            double circleTop = circle.top!;

            //check if the tap is within the circle
            if (tapPosition.dx >= circleLeft &&
                tapPosition.dx <= circleLeft + 50 &&
                tapPosition.dy >= circleTop &&
                tapPosition.dy <= circleTop + 50) {
              //remove the circle from the list
              _players.removeAt(i);
              _playerCount--;
              print("Players: $_playerCount");
              break;
            }
          }
        });
      },
      child: Container(
        color: Colors.transparent,
        child: Stack(//used to draw multiple elements that may overlap
            children: <Widget>[
          ..._players,
          //else display a message saying 12 players is the limit.
        ]),
      ),
    );
  }
}
