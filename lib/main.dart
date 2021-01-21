import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'pages/advertise.dart';
import 'pages/search.dart';
import 'pages/watchlist.dart';
import 'pages/account.dart';

void main() => runApp(MaterialApp(localizationsDelegates: [
      GlobalCupertinoLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ], supportedLocales: [
      Locale("ar", "AE"),
    ], locale: Locale('ar', 'AE'), home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  final _pageOption = [
    Watchlist(),
    Search(),
    Advertise(),
    Account(),
  ];
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60,
          items: <Widget>[
            Icon(Icons.list, size: 35, color: Colors.white),
            Icon(Icons.search, size: 35, color: Colors.white),
            Icon(Icons.add, size: 35, color: Colors.white),
            Icon(Icons.perm_identity, size: 35, color: Colors.white),
          ],
          color: Colors.grey[900],
          buttonBackgroundColor: Colors.grey[900],
          backgroundColor: Colors.transparent,
          animationCurve: Curves.bounceInOut,
          animationDuration: Duration(milliseconds: 200),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Container(
          color: Colors.grey[850],
          child: Column(
            children: <Widget>[
              _pageOption[_page],
            ],
          ),
        ));
  }
}
