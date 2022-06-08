import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: PlayScreen(),
    );
  }
}

class PlayScreen extends StatelessWidget {
  PlayScreen({Key? key}) : super(key: key);

  void playKey(int noteNumber) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$noteNumber.wav');
  }

  Expanded buildKey({int noteNumber = 1, Color color = Colors.white}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playKey(noteNumber);
        },
        child: const Text(
          '',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(noteNumber: 1, color: Colors.red),
              buildKey(noteNumber: 2, color: Colors.orange),
              buildKey(noteNumber: 3, color: Colors.yellow),
              buildKey(noteNumber: 4, color: Colors.green),
              buildKey(noteNumber: 5, color: Colors.blue),
              buildKey(noteNumber: 6, color: Colors.indigo),
              buildKey(noteNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
