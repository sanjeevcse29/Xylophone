import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:english_words/english_words.dart';

// void main() {
//   runApp(XylophoneApp());
// }
void main() => runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playsound(int soundnumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnumber.wav'));
  }

//return type expanded
  Expanded buildkey(Color color, int soundNumber) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playsound(soundNumber);
        },
        child: Text('Click here'),
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
          children: [
            buildkey(Colors.green, 1),
            buildkey(Colors.orange, 2),
            buildkey(Colors.red, 3),
            buildkey(Colors.deepPurpleAccent, 4),
            buildkey(Colors.deepOrange, 5),
            buildkey(Colors.deepOrangeAccent, 6),
            buildkey(Colors.purple, 7),
            
             
          ],
        )),
      ),
    );
  }
}
