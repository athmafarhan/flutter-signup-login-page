import 'package:flutter/material.dart';
import './cart_tab.dart' as cart;
import './favorite_tab.dart' as favorite;
import './home_tab.dart' as home;
import './profile_tab.dart' as profile;

final String username = '';

class UserPage extends StatefulWidget {
  UserPage({this.username});
  final username;

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  int _currentIndex = 0;
  //int bgColor = null;1
  TabController controller;

  @override
  void initState() {
    //controller = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget currentPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return home.HomeTab();
      case 1:
        return home.HomeTab();
      case 2:
        return cart.CartTab();
      case 3:
        return profile.ProfileTab();
        break;
      default:
        return home.HomeTab();
    }
  }

  Widget currentAppBar(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return home.HomeAppBar().appBar0;
      case 1:
        return favorite.FavoriteAppBar().appBar1;
      case 2:
        return cart.CartAppBar().appBar2;
      case 3:
        return profile.ProfileAppBar().appBar3;
        break;
      default:
        return home.HomeAppBar().appBar0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: currentAppBar(_currentIndex),
      body: currentPage(_currentIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          (BoxShadow(
            blurRadius: 4.0,
            color: Colors.black38,
          ))
        ]),
        child: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Colors.white54),
            //backgroundColor: Colors.white,
            canvasColor: Color(0XFF32ABF6),
            //splashColor: Colors.white,
            //unselectedWidgetColor: Colors.white54,
            //primaryColor: Colors.white,
            //textTheme: Theme.of(context).textTheme.copyWith(caption: new TextStyle(color: Colors.grey))
          ),
          child: Material(
//            color: Colors.red,
            child: BottomNavigationBar(
              fixedColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              onTap: (int index) {
                _currentIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.home),
                  backgroundColor: Color(0XFF32ABF6),
                  icon: Icon(
                    Icons.home,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'Beranda',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.star),

                  backgroundColor: Color(0XFF32ABF6),
                  icon: Icon(
                    Icons.star,
                    color: Colors.white54,
                  ),
                  title: Text('Favorit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.shopping_cart),

                  backgroundColor: Color(0XFF32ABF6),
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white54,
                  ),
                  title: Text('Keranjang',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.person),

                  backgroundColor: Color(0XFF32ABF6),
                  icon: Icon(
                    Icons.person,
                    color: Colors.white54,
                  ),
                  title: Text('Profil',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
//        bottomNavigationBar: BottomNavigationBar(
//          fixedColor: Color(0XFF32ABF6),
//          items: <BottomNavigationBarItem>[
//            BottomNavigationBarItem(
//              //backgroundColor: Color(0XFF32ABF6),
//              icon: Icon(Icons.home),
//              title: Text("Left"),
//            ),
//            BottomNavigationBarItem(
//              icon: new Icon(Icons.search),
//              title: new Text("Right"),
//            ),
//            BottomNavigationBarItem(
//              icon: new Icon(Icons.search),
//              title: new Text("Right"),
//            ),
//            BottomNavigationBarItem(
//              icon: new Icon(Icons.search),
//              title: new Text("Right"),
//            ),
//          ],
//        ),
//        bottomNavigationBar:
//        Material(
//          color: Color(0XFF32ABF6),
//          child: TabBar(
//              controller: controller,
//              tabs: <Widget>[
//          Tab(icon: Icon(Icons.home, size: 40.0,), text: "Beranda", ),
//          Tab(icon: Icon(Icons.star, size: 40.0,), text: "Favorit",),
//          Tab(icon: Icon(Icons.shopping_cart, size: 40.0,), text: "Keranjang",),
//          Tab(icon: Icon(Icons.person, size: 40.0,), text: "Profil",),])
//        ),
//        drawer: Drawer(
//          child: ListView(
//            children: <Widget>[
//              DrawerHeader(
//                child: Text('Halo $username',
//                    style: TextStyle(color: Colors.white, fontSize: 20.0)),
//                decoration: BoxDecoration(
//                  color: Colors.blue,
//                ),
//              ),
//              ListTile(
//                trailing: Icon(Icons.settings),
//                title: Text('Setting'),
//              ),
//              ListTile(
//                title: Text('About'),
//                trailing: Icon(Icons.info),
//              ),
//              ListTile(
//                title: Text('Log Out'),
//                trailing: Icon(Icons.exit_to_app),
//                onTap: () {
//                  // Navigate to the second screen using a named route
//                  Navigator.pushNamed(context, '/FirstPage');
//                },
//              )
//            ],
//          ),
//        ),

//          body: TabBarView(
//            controller: controller,
//            children: [
//              home.HomeTab(),
//              favorite.FavoriteTab(),
//              cart.CartTab(),
//              profile.ProfileTab(),
//            ],
//          ),
//        body: Padding(
//          padding: EdgeInsets.all(30.0),
//          child: Center(
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.start,
//              //crossAxisAlignment: CrossAxisAlignment.start,
//              children: <Widget>[
//                Text(
//                  'Hello $username',
//                  style: TextStyle(fontSize: 20.0),
//                ),
//                RaisedButton(
//                  child: Text("Keluar"),
//                  onPressed: () {
//                    Navigator.pushReplacementNamed(context, '/FirstPage');
//                  },
//                ),
//              ],
//            ),
//          ),
//        ),
    );
  }
}

//class UserPage extends StatefulWidget {
//  UserPage({this.username});
//  final String username;
//
//  TabController controller;
//
//  @override
//  void initState(){
//    controller = new TabController(length: 4, vsync: this);
//    super.initState();
//  }
//
//  @override
//  void dispose(){
//    controller.dispose();
//    super.dispose();
//  }
//
//
//
//
//}
