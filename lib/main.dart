import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNo){
    final player = AudioCache();
    player.play('note$soundNo.wav');
  }
  
  Expanded buildKey(int soundNo, colori){
    return Expanded(
        child: FlatButton(
          onPressed: (){
                playSound(soundNo);
              },
          color: colori,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.blue),
              buildKey(3, Colors.greenAccent),
              buildKey(4, Colors.green),
              buildKey(5, Colors.yellow),
              buildKey(6, Colors.deepOrangeAccent),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
