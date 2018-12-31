//import 'package:flutter/material.dart';

//void main() {
// runApp(new MyApp());
//}

//class MyApp extends StatelessWidget {
//  const MyApp({
//  Key key,
//}) : super(key: key);

//@override
//Widget build(BuildContext context) {
//return MaterialApp(
//title: "EL App",
//     theme: ThemeData(primarySwatch: Colors.purple),
//   home: Scaffold(
//   appBar: AppBar(
//   title: Text("Church App"),
// centerTitle: true,
//),
//body: Container(
// color: Colors.white,
//child: Center(
//child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
//  children: <Widget>[
//  buildButton(),
//],
//),
//),
//),
//),
//);
//}

//RaisedButton buildButton() {
// return RaisedButton(
//   child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
//   Icon(
//   Icons.print,
// color: Colors.purple,
//),
//]),
//onPressed: () {
// print("Some one clicked");
//});
//}
//}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            buildRow("Manchester United", 22),
            buildRow("Juventus", 18),
            buildRow("Real Madrid", 19),
            buildRow("PSG", 17),
            buildRow("Kabasha", 14),
            buildRow("Mazembe", 22),
            buildRow("Virunga", 13),
            buildRow("DCMP", 16),
            buildRow("Volcano", 13),
          ],
        ),
      ),
    );
  }

  Container buildRow(String team, int points) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.orange, width: 2),
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
                color: Colors.orange,
                borderRadius: BorderRadius.all(Radius.circular(4))),
            child: Text(
              "$points",
              style: TextStyle(fontSize: 21, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
