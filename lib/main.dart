//import 'package:flutter/material.dart';

//void main() {
// runApp(MyApp());
//}

//class MyApp extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return MyAppState();
//  }
//}

//class MyAppState extends State<MyApp> {
// bool isToggled = false;

//@override
//Widget build(BuildContext context) {
// return MaterialApp(
//  title: 'Flutter Demo',
//  theme: ThemeData(
//  primarySwatch: Colors.orange,
//),
//home: Scaffold(
//appBar: AppBar(),
//body: ListView(
// children: [
//   buildRow("Manchester United", 22),
// buildRow("Juventus", 18),
//buildRow("Real Madrid", 19),
//buildRow("PSG", 17),
//buildRow("Kabasha", 14),
//buildRow("Mazembe", 22),
//buildRow("Virunga", 13),
//buildRow("DCMP", 16),
//buildRow("Volcano", 13),
// ],
//),
//),
//);
//}

//Container buildRow(String team, int points) {
//return Container(
// decoration: BoxDecoration(
//   border: Border.all(color: Colors.orange, width: 2),
// borderRadius: BorderRadius.all(Radius.circular(4))),
//margin: EdgeInsets.all(20),
//padding: EdgeInsets.all(5),
//child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
//children: [
//Text(
//"$team",
//style: TextStyle(fontSize: 21),
//),
//Container(
// padding: EdgeInsets.all(3),
//decoration: BoxDecoration(
//  color: Colors.orange,
//borderRadius: BorderRadius.all(Radius.circular(4))),
//child: Text(
//"$points",
//style: TextStyle(fontSize: 21, color: Colors.white),
//),
//),
//],
//),
//);
//}
//}
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Joe App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            buildRow("Machester United", 20, Colors.green, Colors.red),
            buildRow("Juventus", 18, Colors.orange, Colors.purple),
            buildRow("Real Madrid", 19, Colors.blue, Colors.pink),
          ],
        ),
      ),
    );
  }

  Container buildRow(String team, int point, Color countorColor, Color numberColor) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: countorColor, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(4))),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$team",
            style: TextStyle(fontSize: 21),
          ),
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: numberColor,
                borderRadius: BorderRadius.all(Radius.circular(4))),
            child: Text(
              "$point",
              style: TextStyle(fontSize: 21, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
