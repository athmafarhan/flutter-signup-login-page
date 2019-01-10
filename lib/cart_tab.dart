import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  var appBar2 = AppBar(
    actions: <Widget>[
//      FlatButton(onPressed: (){print('Hapus');}, child: Text('Hapus', style: TextStyle(color: Colors.white),))
    ],
    backgroundColor: Color(0XFF00C6C0),
    title: Text(
      "Keranjang",
      style: TextStyle(fontWeight: FontWeight.w500),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class CartTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(20.0)),
          Card(
            child: Row(
              children: <Widget>[
                Text('Keranjang'),
                SizedBox(height: 30.0,),
                Icon(Icons.shopping_cart)
              ],
            )
          )
        ],
      )
    );
  }
}
