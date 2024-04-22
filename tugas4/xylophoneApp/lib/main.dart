import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(
      {required int soundNumber,
      required Color buttonColor,
      required String buttonText}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
        ),
        onPressed: () {
          print('Tombol $buttonText ditekan');
          playSound(soundNumber);
        },
        child: Text(buttonText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(
                  soundNumber: 1,
                  buttonColor: Colors.red,
                  buttonText: 'Tombol 1'),
              buildKey(
                  soundNumber: 2,
                  buttonColor: Colors.orange,
                  buttonText: 'Tombol 2'),
              buildKey(
                  soundNumber: 3,
                  buttonColor: Colors.yellow,
                  buttonText: 'Tombol 3'),
              buildKey(
                  soundNumber: 4,
                  buttonColor: Colors.green,
                  buttonText: 'Tombol 4'),
              buildKey(
                  soundNumber: 5,
                  buttonColor: Colors.teal,
                  buttonText: 'Tombol 5'),
              buildKey(
                  soundNumber: 6,
                  buttonColor: Colors.blue,
                  buttonText: 'Tombol 6'),
              buildKey(
                  soundNumber: 7,
                  buttonColor: Colors.purple,
                  buttonText: 'Tombol 7'),
            ],
          ),
        ),
      ),
    );
  }
}
