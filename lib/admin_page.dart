//import 'package:flutter/material.dart';
//
//class AdminPage extends StatelessWidget {
//
//  AdminPage({this.username});
//  final String username;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Welcome"),
//
//      ),
//      body: Padding(
//        padding: EdgeInsets.all(10.0),
//        child: Column(
//          children: <Widget>[
//            Text('Hello $username'),
//            RaisedButton(
//                child: Text(
//                    'LogOut'),
//                onPressed: (){
//                  Navigator.pushReplacementNamed(context,'/FirstPage');
//                },
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}


import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {

  AdminPage({this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome Admin"),),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Hallo $username', style: TextStyle(fontSize: 20.0),),

              RaisedButton(
                child: Text("Keluar"),
                onPressed: (){
                  Navigator.pushReplacementNamed(context,'/FirstPage');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}