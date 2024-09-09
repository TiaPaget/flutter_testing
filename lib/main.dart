import 'package:flutter/material.dart';
import 'package:flutter_testing/player.dart';
import 'theme.dart';
import 'player_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: const MaterialTheme(TextTheme()).dark(),
      home: const Scaffold(
        body: MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Player> _players = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff3E3F40),
      child: SafeArea(
        child: Column(
          children: [
            //top text
            const Center(
              child: Text(
                "Tap the part of the screen that is closest to you!",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            //Mid-section touch area, with button
            Expanded(
              child: Stack(
                children: [
                  //touch area
                  PlayerCounter(players: _players),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        for (var player in _players) {
                          //setting all players to grey
                          player.isGrey = true;
                        }
                        //cycle through players and pick a winner
                        //foppr each player, set isgrey to true.
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(15), // Rounded corners
                        ),
                      ),
                      child: const Text(
                        "DECIDE",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //bottom upside down text section
            Center(
              child: Transform.rotate(
                angle: 3.141592, //180 degrees in radians (pi)
                child: const Text(
                  "Tap the part of the screen that is closest to you!",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
