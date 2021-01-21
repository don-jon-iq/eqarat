import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../components/Cards.dart';

class Watchlist extends StatelessWidget {
  final List<String> tripsList = ["kjhdslk", "jikashd", "kljsdhf"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Cards(),
    );
  }
}
