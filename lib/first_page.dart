import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'login_page.dart';

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      body: SingleChildScrollView(
//        child: new ConstrainedBox(
//          constraints: new BoxConstraints(
//              //minHeight: viewportConstraints.maxHeight,
//              ),
//          child: new Column(
//            mainAxisSize: MainAxisSize.min,
//            mainAxisAlignment: MainAxisAlignment.spaceAround,
//            children: <Widget>[
//              new Container(
//                // A fixed-height child.
//                color: Colors.yellow,
//                height: 120.0,
//              ),
//              new Container(
//                // Another fixed-height child.
//                color: Colors.green,
//                height: 120.0,
//              ),
//            ],
//          ),
//        ),
//      ),

        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 100.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: new LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[Color(0XFF00C6C0), Color(0XFF32ABF6)]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 58.0,
              child: Text(
                'SeBar',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 55.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 90.0),
            Container(
              child: Material(
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Colors.black,
                elevation: 5.0,
                color: Colors.white,
                child: MaterialButton(
                  child: Text('Sign Up Free',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)),
                  minWidth: 300.0,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/SignUpPage');
                  },
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Container(
              child: FlatButton(
                  child: Text('Already have an account?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold)),
                  onPressed: (){print('already have an account');}),
            ),
            SizedBox(height: 20.0),
            Container(
              child: Material(
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Colors.black,
                elevation: 5.0,
                color: Color(0XFFFFE047),
                child: MaterialButton(
                  child: Text('Log In',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)),
                  height: 0.0,
                  minWidth: 300.0,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/LoginPage');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}
