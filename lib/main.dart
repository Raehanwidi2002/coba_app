import 'package:flutter/material.dart';

void main() {
  runApp(Latihan());
}

class Latihan extends StatelessWidget {
  Latihan({Key? key}) : super(key: key);

  List<Color> myColor = [
    Colors.red,
    Colors.amber,
    Colors.green,
    Colors.red,
    Colors.amber,
    Colors.green
  ];
  List<Widget> myList = List.generate(100, (index) => Text("${index +1}", style: TextStyle(fontSize: 20 + double.parse(index.toString())),));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan"),
          ),
          body: ListView(
            children: myList,
            
          )),
    );
  }
}
