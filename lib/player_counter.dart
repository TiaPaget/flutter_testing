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
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        print("Tapped at ${details.localPosition}");

        setState(() {
          _tapPosition = details.localPosition;
          _playerCount++;
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
                decoration: const BoxDecoration(
                  //test style should display a red circle
                  color: Color(0xffFF0000),
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ]),
      ),
    );
  }
}
