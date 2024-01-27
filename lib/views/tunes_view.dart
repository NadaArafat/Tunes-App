import 'package:flutter/material.dart';
import 'package:tunes_player/widgets/tune_item.dart';

class TunesView extends StatelessWidget {
  const TunesView({super.key});

  final List<Color> tuneColors = const [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Color(0xff2D9588),
    Colors.blue,
    Colors.purple,
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
        children: getTuneItems(),
      ),
    );
  }

  List<TuneItem> getTuneItems(){
    List<TuneItem> items=[];
    for(var color in tuneColors) {
      items.add(TuneItem(color: color));
    }
    return items;
  }
}
