import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerCounter extends StatefulWidget {
  const PlayerCounter({super.key});

  @override
  State<PlayerCounter> createState() => _PlayerCounterState();
}

class _PlayerCounterState extends State<PlayerCounter> {
  int _playerCount = 0;
  Offset? _tapPosition;

  final List<Color> _circleColors = <Color>[
    const Color(0xffff5d069),
    const Color.fromARGB(255, 123, 171, 234),
    const Color(0xfffd66ff2),
    const Color(0xffff5fd99a),
    const Color(0xffffd9965f),
    const Color.fromARGB(255, 185, 98, 91),
    const Color.fromARGB(255, 34, 71, 159),
    const Color(0xffff7943bf),
    const Color(0xffff4d3c39),
    const Color(0xffff1b570a),
    const Color(0xffff961e84),
    const Color.fromARGB(255, 238, 40, 40),
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          _tapPosition = details.localPosition;
          _playerCount++;
          print("player count is: $_playerCount");
        });
      },
      child: Container(
        color: Colors.transparent,
        child: Stack(//used to draw multiple elements that may overlap
            children: <Widget>[
          if (_tapPosition != null)
            Positioned(
              //positioning the circles based on the tap location
              left: _tapPosition!.dx - 25,
              top: _tapPosition!.dy - 25,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  //test style should display a red circle
                  color: _circleColors[_playerCount % _circleColors.length],
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ]),
      ),
    );
  }
}
