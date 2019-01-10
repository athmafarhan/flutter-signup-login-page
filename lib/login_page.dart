import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'main.dart' as main;

String username;

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Masuk Gagal"),
          content:
              new Text("Email/Username atau Password yang Anda masukkan salah"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Tutup"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
    print("dialog");
  }

  TextEditingController user = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  String msg = '';

  Future<List> _login() async {
    //var url = new Uri.http("locahost:8000", );
    final response = await http.post(
        'http://athmafarhan.000webhostapp.com/rest/login.php',
        body: {"username": user.text, "password": pass.text});

    var dataUser = json.decode(response.body);

    print(dataUser);
    //print("Decoded 2: $decoded");
    //}
    //catch(e) {
    //print('hhehe');
    //print("Error: $e");
    //}

    if (dataUser.length == 0) {
      _showDialog();
      user.clear();
      pass.clear();
//      setState(() {
//        msg = 'Email dan password anda salah, silahkan coba lagi';
//      });
    } else {
      if (dataUser[0]['level'] == 'admin') {
        Navigator.pushReplacementNamed(context, '/AdminPage');
      } else if (dataUser[0]['level'] == 'user') {
        Navigator.pushReplacementNamed(context, '/UserPage');
      }

      setState(() {
        main.username = dataUser[0]['username'];
      });
    }
    return dataUser;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: new LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[Color(0XFF00C6C0), Color(0XFF32ABF6)],
              tileMode: TileMode.repeated),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //appbar
            Container(
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
                  'Masuk',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Email/Username',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Material(
                    borderRadius: BorderRadius.circular(9.0),
                    shadowColor: Colors.black,
                    elevation: 7.0,
                    color: Colors.white,
                    child: TextFormField(
                      autofocus: true,
                      controller: user,
                      //initialValue: 'halo',
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 13.0, bottom: 13.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Password',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Material(
                    borderRadius: BorderRadius.circular(9.0),
                    shadowColor: Colors.black,
                    elevation: 7.0,
                    color: Colors.white,
                    child: TextFormField(
                      controller: pass,
                      //initialValue: 'halo',
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 13.0, bottom: 13.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(msg,
                      style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  Container(
                      alignment: Alignment.center,
                      child: FlatButton(
                          onPressed: () {print('Lupa Password');},
                          child: Text('Lupa Password?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ))),
                ],
              ),
            ),
            SizedBox(height: 40.0),
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
                  minWidth: 180.0,
                  onPressed: () {
                    _login();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}