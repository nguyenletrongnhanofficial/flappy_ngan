// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  Cover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          // "Cao hơn cả núi, dài hơn cả sông Rộng hơn cả đất, xanh hơn cả trời Anh yêu em❤️, Anh yêu em (nhiều)^∞",
          "Game đỉnh vl =))",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Magic4",
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
