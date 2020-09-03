import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60,
          items: <Widget>[
            Icon(Icons.add, size: 40, color: Colors.white),
            Icon(Icons.list, size: 40, color: Colors.white),
            Icon(Icons.compare_arrows, size: 40, color: Colors.white),
            Icon(Icons.call_split, size: 40, color: Colors.white),
            Icon(Icons.perm_identity, size: 40, color: Colors.white),
          ],
          color: Colors.grey[900],
          buttonBackgroundColor: Colors.grey[900],
          backgroundColor: Colors.grey[850],
          animationCurve: Curves.easeInBack,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Container(
          color: Colors.grey[850],
          child: Center(
            child: Column(
              children: <Widget>[
                Center(
                  child: Text(_page.toString(), textScaleFactor: 10.0),
                ),
              ],
            ),
          ),
        ));
  }
}
