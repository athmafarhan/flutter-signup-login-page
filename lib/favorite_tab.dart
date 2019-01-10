import 'package:flutter/material.dart';

class FavoriteAppBar extends StatelessWidget {
  var appBar1 = AppBar(
    actions: <Widget>[
      IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: null),
      IconButton(
          icon: Icon(
            Icons.favorite,
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
      "Favorit",
      style: TextStyle(fontWeight: FontWeight.w500),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class FavoriteTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(20.0)),
          Card(
            child: Row(
              children: <Widget>[
                Text('Favorit'),
                SizedBox(height: 30.0,),
                Icon(Icons.star)
              ],
            )
          )
        ],
      )
    );
  }
}
