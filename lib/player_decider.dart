import 'package:flutter/material.dart';
import 'player.dart';

class PlayerDecider {
  final List<Player> players;
  final BuildContext context;

  PlayerDecider(this.players, this.context);

  void decideWinner() {
    if (players.isNotEmpty) {
      startCycling((Player winner) {
        //temporary message stating winning player
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Winner"),
              content: Text("Player ${winner.id} is the winner!"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("OK"),
                ),
              ],
            );
          },
        );
      });
    } else {
      //no players display basic message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("No players available to decide from.")),
      );
    }
  }

  void startCycling(Function(Player) onCycleComplete) {
    //replace later with animation to cycle through players..
    Future.delayed(const Duration(seconds: 2), () {
      final winner = selectWinner();
      onCycleComplete(winner);
    });
  }

  Player selectWinner() {
    //return a random player from the list
    return players[(players.length *
        DateTime.now().millisecondsSinceEpoch %
        players.length)];
  }
}
