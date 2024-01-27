import 'package:flutter/material.dart';
import 'package:tunes_player/widgets/tune_item.dart';

class TunesView extends StatelessWidget {
  const TunesView({super.key});

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
        children: [
          TuneItem(
            color: Colors.red,
          ),
          TuneItem(
            color: Colors.orange,
          ),
          TuneItem(
            color: Colors.yellow,
          ),
          TuneItem(
            color: Colors.green,
          ),
          TuneItem(
            color: Colors.blue,
          ),
          TuneItem(
            color: Colors.lightBlue,
          ),
          TuneItem(
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
