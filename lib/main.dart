import 'package:flutter/material.dart';

void main(){
  runApp(Latihan());
}

class Latihan extends StatefulWidget {
  const Latihan({ Key? key }) : super(key: key);

  @override
  State<Latihan> createState() => _LatihanState();
}

class _LatihanState extends State<Latihan> {
  var angka = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("StateFull Widget"),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              angka.toString(),
              style: TextStyle(
                fontSize: 20 + double.parse(angka.toString())
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if(angka != 1){
                    angka--;
                  }
                  });
                  
                  print(angka);
                  
                },
                
                child: Icon(Icons.remove)
                ),
                 ElevatedButton(
                onPressed: () {
                  setState(() {
                    angka++;
                  });
                  
                  print(angka);
                },
                child: Icon(Icons.add)
                )
            ],)
          ],
        ),
      ),
    );
  }
}