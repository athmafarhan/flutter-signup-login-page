//import 'package:flutter/material.dart';
//import 'login_page.dart';
//import 'first_page.dart';
//import 'signup_page.dart';
//void main() {
//  runApp(MaterialApp(
//    title: 'Navigation Basics',
//    home: SignUpPage(),
//  ));
//}
//
//class FirstScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('First Screen'),
//      ),
//      body: Center(
//        child: RaisedButton(
//          child: Text('Launch screen'),
//          onPressed: () {
//            Navigator.push(
//              context,
//              MaterialPageRoute(builder: (context) => SecondScreen()),
//            );
//          },
//        ),
//      ),
//    );
//  }
//}
//
//class SecondScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Second Screen"),
//      ),
//      body: Center(
//        child: RaisedButton(
//          onPressed: () {
//            Navigator.pop(context);
//          },
//          child: Text('Go back!'),
//        ),
//      ),
//    );
//  }
//}


//import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/material.dart';
import 'first_page.dart';
import 'admin_page.dart';
import 'user_page.dart';
import 'signup_page.dart';
import 'login_page.dart';

void main() {
  runApp(new MyApp());
}

String username;

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'SeBar - Sewa Barang Online',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new FirstPage(),
      routes: <String, WidgetBuilder>{
        '/AdminPage': (BuildContext context) => new AdminPage(username: username),
        '/UserPage': (BuildContext context) => new UserPage(username: username,),
        '/FirstPage': (BuildContext context) => new FirstPage(),
        '/SignUpPage': (BuildContext context) => new SignUpPage(),
        '/LoginPage': (BuildContext context) => new LoginPage()
      },
    );
  }
}

//import 'package:flutter/material.dart';
//
//void main() {
//  runApp(
//      new MaterialApp(
//          home: new AwesomeButton()
//      )
//  );
//}
//
//class AwesomeButton extends StatefulWidget {
//  @override
//  AwesomeButtonState createState() => new AwesomeButtonState();
//}
//
//class AwesomeButtonState extends State<AwesomeButton> {
//
//  int counter = 0;
//  List<String> strings = ["Flutter", "Is", "Awesome"];
//  String displayedString = "";
//
//  void onPressed() {
//    setState(() {
//      displayedString = strings[counter];
//      counter = counter < 2 ? counter + 1 : 0;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//        appBar: new AppBar(title: new Text("Stateful Widget!"), backgroundColor: Colors.deepOrange),
//        body: new Container(
//            child: new Center(
//                child: new Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                      new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
//                      new Padding(padding: new EdgeInsets.all(10.0)),
//                      new RaisedButton(
//                          child: new Text("Press me!", style: new TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
//                          color: Colors.red,
//                          onPressed: onPressed
//                      )
//                    ]
//                )
//            )
//        )
//    );
//  }
//}