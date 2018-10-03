import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 130.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: new LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[Colors.purple, Colors.blueAccent]
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //appbar
            Container(
              height: 60.0,
              child: Text(
                'MyApp',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 55.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(
              height: 70.0
            ),
            Container(
              child: Material(
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Colors.black,
                elevation: 5.0,
                color: Colors.white,
                child: MaterialButton(
                    child: Text(
                        'Sign Up Free',
                        style: TextStyle(
                            color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold
                        )
                    ),
                    minWidth: 300.0, onPressed: null
                ),
              ),
            ),
            SizedBox(
                height: 50.0
            ),
            Container(
              child: Text(
                  'Already have an account?',
                  style: TextStyle(
                      color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold
                  )
              ),
            ),
            SizedBox(
                height: 20.0
            ),
            Container(
              child: Material(
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Colors.black,
                elevation: 5.0,
                color: Color(0XFFFFE047),
                child: MaterialButton(
                    child: Text(
                        'Log In',
                        style: TextStyle(
                            color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold
                        )
                    ),
                    minWidth: 300.0, onPressed: null
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}