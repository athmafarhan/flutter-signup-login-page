import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  var appBar3 = AppBar(
    actions: <Widget>[
      IconButton(
          icon: Icon(
            Icons.settings,
            color: Colors.white,
          ),
          onPressed: null),
      IconButton(
          icon: Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          onPressed: null),
    ],
    backgroundColor: Color(0XFF00C6C0),
    title: Text(
      "Profil",
      style: TextStyle(fontWeight: FontWeight.w500),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 1,
        padding: EdgeInsets.all(9.0),
        childAspectRatio: 16.0 / 5.0,
        // TODO: Build a grid of cards (102)
        children: <Widget>[
          Card(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 0.0, right: 13.0),
                child: Image.asset(
                  'assets/futsal.png',
                  height: 40.0,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Verified Account',
                    style:
                        TextStyle(fontStyle: FontStyle.italic, fontSize: 12.0),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 60.0,
                    width: 1.5,
                    color: Colors.black54,
                    margin: const EdgeInsets.only(left: 15.0, right: 30.0),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'SeBarPoints',
                    style: TextStyle(),
                  ),
                  Text(
                    '1500 points',
                    style: TextStyle(fontSize: 18.0),
                  )
                ],
              )
            ],
          )),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 39.0),
                  child: Image(
                    image: AssetImage('assets/ovo.png'),
                    height: 40.0,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 60.0,
                      width: 1.5,
                      color: Colors.black54,
                      margin: const EdgeInsets.only(left: 39.0, right: 30.0),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Saldo',
                      style: TextStyle(),
                    ),
                    Text(
                      'Rp 3.000.000',
                      style: TextStyle(fontSize: 18.0),
                    )
                  ],
                )
              ],
            ),
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 39.0),
                  child: IconButton(
                    icon: Icon(Icons.exit_to_app),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/FirstPage');
                    },
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 60.0,
                      width: 1.5,
                      color: Colors.black54,
                      margin: const EdgeInsets.only(left: 39.0, right: 30.0),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/FirstPage');
                        },
                        child: Text('Keluar'))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
