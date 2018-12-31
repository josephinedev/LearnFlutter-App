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
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
                  child: Image.network(
                      "https://pbs.twimg.com/profile_images/1022172295471792130/QvXrfPjH_400x400.jpg"),
                ),

                Text("")

              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              isToggled = !isToggled;
            });
          },
        ),
      ),
    );
  }

  Container buildTextField() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
      child: TextField(
        decoration: InputDecoration(border: OutlineInputBorder()),
        keyboardType: TextInputType.number,
      ),
    );
  }

  Row buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FlutterLogo(
          size: 100,
        ),
        Text(isToggled ? 'ON' : 'OFF'),
        RaisedButton(
          child: Text('Toggle'),
          onPressed: () {
            setState(() {
              isToggled = !isToggled;
            });
          },
        ),
      ],
    );
  }
}
