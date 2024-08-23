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

  final List<Color> _circleColors = <Color>[
    const Color.fromRGBO(245, 208, 105, 1),
    const Color.fromARGB(255, 123, 171, 234),
    const Color.fromRGBO(214, 111, 242, 1),
    const Color.fromRGBO(95, 217, 154, 1),
    const Color.fromARGB(255, 217, 150, 95),
    const Color.fromARGB(255, 185, 98, 91),
    const Color.fromARGB(255, 34, 71, 159),
    const Color.fromRGBO(121, 67, 191, 1),
    const Color.fromARGB(255, 108, 86, 82),
    const Color.fromRGBO(27, 87, 10, 1),
    const Color.fromRGBO(150, 30, 132, 1),
    const Color.fromARGB(255, 238, 40, 40),
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressStart: (details) {
        setState(() {
          _tapPosition = details.localPosition;
          _playerCount++;
          print("Players: $_playerCount");
          _players.add(
            Positioned(
              //positioning the circles based on the tap location
              left: _tapPosition!.dx - 25,
              top: _tapPosition!.dy - 25,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  //test style should display a red circle
                  color: _circleColors[_players.length],
                  shape: BoxShape.circle,
                ),
              ),
            ),
          );
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
