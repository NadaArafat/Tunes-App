import 'package:flutter/material.dart';
import 'package:tunes_player/models/tune_model.dart';
import 'package:tunes_player/widgets/tune_item.dart';

class TunesView extends StatelessWidget {
  const TunesView({super.key});

  final List<TuneModel> tuneColors = const [
    TuneModel(color: Colors.red, sound: 'note1.wav'),
    TuneModel(color: Colors.orange, sound: 'note2.wav'),
    TuneModel(color: Colors.yellow, sound: 'note3.wav'),
    TuneModel(color: Colors.green, sound: 'note4.wav'),
    TuneModel(color: Color(0xff2D9588), sound: 'note5.wav'),
    TuneModel(color: Colors.blue, sound: 'note6.wav'),
    TuneModel(color: Colors.purple, sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter Tune"),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
        backgroundColor: Color(0xff243139),
        elevation: 0,
      ),
      body: Column(
        children: tuneColors
            .map(
              (e) => TuneItem(tune: e),
            )
            .toList(),
      ),
    );
  }

}
