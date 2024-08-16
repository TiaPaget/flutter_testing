import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          children: [
            //top text
            Container(
              child: Center(
                child: Text(
                  "Tap the part of the screen that is closest to you!",
                  style: TextStyle(fontSize: 32),
                ),
              ),
            ),
            //Mid-section touch area, with button
            Expanded(
              child: Container(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      //Decide button
                    },
                    child: const Text("DECIDE"),
                  ),
                ),
              ),
            ),
            //bottom upside down text section
            Container(
              child: Center(
                child: Transform.rotate(
                  angle: 3.141592, //180 degrees in radians (pi)
                  child: const Text(
                    "Tap the part of the screen that is closest to you!",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
