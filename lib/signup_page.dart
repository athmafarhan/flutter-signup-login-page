import 'package:flutter/material.dart';
import 'main.dart' as main;
import 'package:http/http.dart' as http;

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  TextEditingController controllerEmail = new TextEditingController();
  TextEditingController controllerUsername = new TextEditingController();
  TextEditingController controllerPassword = new TextEditingController();
  //TextEditingController controllerUsername = new TextEditingController();

  void addData(){
    var url = "http://athmafarhan.000webhostapp.com/rest/adduser.php";

    http.post(url, body: {
      "email": controllerEmail.text,
      "username": controllerUsername.text,
      "password": controllerPassword.text
    });

    Navigator.pushReplacementNamed(context, '/UserPage');

    setState(() {
      main.username = controllerUsername.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: new LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[Color(0XFF00C6C0), Color(0XFF32ABF6)],
              tileMode: TileMode.repeated),
        ),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //appbar
            Container(
              alignment: Alignment.topLeft,
              height: 50.0,
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0, left: 10.0),
                child: SizedBox(
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/FirstPage');
                    },
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text(
                  'Buat Akun',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Masukkan Email Anda',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 9.0),
                  Material(
                    borderRadius: BorderRadius.circular(9.0),
                    shadowColor: Colors.black,
                    elevation: 7.0,
                    color: Colors.white,
                    child: TextFormField(
                      autofocus: true,
                      controller: controllerEmail,
                      //style: TextStyle(fontSize: 15.0),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 13.0, bottom: 13.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 9.0),
                  Text(
                    'Anda perlu mengonfirmasikan email nanti',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Pilih sebuah Username',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Material(
                    borderRadius: BorderRadius.circular(9.0),
                    shadowColor: Colors.black,
                    elevation: 7.0,
                    color: Colors.white,
                    child: TextFormField(
                      controller: controllerUsername,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 13.0, bottom: 13.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 9.0),
                  Text(
                    'Gunakan kurang lebih 4 karakter',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Pilih sebuah Password',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Material(
                    borderRadius: BorderRadius.circular(9.0),
                    shadowColor: Colors.black,
                    elevation: 7.0,
                    color: Colors.white,
                    child: TextFormField(
                      obscureText: true,
                      controller: controllerPassword,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 13.0, bottom: 13.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 9.0),
                  Text(
                    'Gunakan kurang lebih 8 karakter',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              alignment: Alignment.center,
              child: Material(
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Colors.black,
                elevation: 5.0,
                color: Color(0XFFFFE047),
                child: MaterialButton(
                    child: Text('Lanjutkan',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold)),
                    minWidth: 200.0,
                    onPressed: () {
                      print('Test');
                      addData();
                    }
                    ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

//      body: new ConstrainedBox(
//          constraints: new BoxConstraints.expand(),
//          child: new DecoratedBox(
//            child: Column(
//              children: <Widget>[
//
//              ],
//            ),
//            decoration: new BoxDecoration(
//              gradient: new LinearGradient(
//                begin: Alignment.topRight,
//                end: Alignment.bottomLeft,
//                colors: <Color>[Color(0XFF00C6C0), Color(0XFF32ABF6)],
//                tileMode: TileMode.repeated
//              ),
//            ),
//
//          ),
//