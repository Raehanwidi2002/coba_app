import 'package:flutter/material.dart';

void main(){
  runApp(Latihan());
}

class Latihan extends StatelessWidget {
   Latihan({ Key? key }) : super(key: key);

  List<Map<String,dynamic>> myList = [
    {
      "Nama" : "Raehan",
      "Umur" : 20,
      "favColor" : ["Merah", "Jingga" ]
    },
    {
      "Nama" : "Widi",
      "Umur" : 20,
      "favColor" : ["Merah", "Jingga" ,  "Biru", "Hijau"]
    },
    {
      "Nama" : "Sugiarto",
      "Umur" : 20,
      "favColor" : ["Merah", "Jingga" , "Hijau", "Biru", "Jingga" , "Hijau", "Biru"]
    },
    {
      "Nama" : "Raehan",
      "Umur" : 20,
      "favColor" : [ "Jingga" , "Hijau", "Biru","Merah", "Hijau", "Biru","Merah"]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mapping List"),
        ),
        body: ListView(
         children: myList.map((data){
         List myfav = data["favColor"];
            return Card(
              color: Color.fromARGB(255, 154, 53, 255),
              margin: EdgeInsets.all(15),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: NetworkImage("https://picsum.photos/id/5/522/222"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nama  :  ${data["Nama"]}"),
                              Text("Umur  :  ${data["Umur"]}")
                            ],
                          )
                        ],
                      ),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myfav.map((color){
                          return Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            color: Colors.blue,
                            child: Text(color),
                          );
                        }).toList() ,
                      ),
                    )
                  ],
                ),
              ),
            );
         }).toList()
        ),
      )
    );
  }
}