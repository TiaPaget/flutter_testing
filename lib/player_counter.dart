import 'dart:math';
import 'player.dart';
import 'package:flutter/material.dart';
import 'circle_animation_controller.dart';

class PlayerCounter extends StatefulWidget {
  const PlayerCounter({super.key});

  @override
  State<PlayerCounter> createState() => _PlayerCounterState();
}

class _PlayerCounterState extends State<PlayerCounter>
    with TickerProviderStateMixin {
  Offset? _tapPosition;
  final List<Player> _players = [];
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
          final controller = CircleAnimationController(vsync: this);
          _players.add(Player(
              _players.length, _tapPosition!, _getRandomColor(), controller));
        });
      },
      onDoubleTapDown: (details) {
        //remove the player that is double-tapped
        setState(() {
          final deleteTapPosition =
              details.localPosition; //position double-tapped
          Player? tappedPlayer; //player that is tapped, this can be Null

          for (var player in _players) {
            //compare tap position to all players positions
            final position = player.position;
            final size = player.animationController.animationSize.value;
            if (deleteTapPosition.dx >= position.dx - size / 2 &&
                deleteTapPosition.dx <= position.dx + size / 2 &&
                deleteTapPosition.dy >= position.dy - size / 2 &&
                deleteTapPosition.dy <= position.dy + size / 2) {
              tappedPlayer = player;
              break;
            }
          }

          if (tappedPlayer != null) {//if a player is double-tapped, remove this player.
            _players.remove(tappedPlayer);
            tappedPlayer.dispose();
          }
        });
      },
      child: Container( //container to hold the players
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
