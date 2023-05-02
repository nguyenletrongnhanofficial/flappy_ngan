// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../../globals/functions.dart';
import '../../Resources/strings.dart';

class RateUs extends StatelessWidget {
  RateUs({Key? key}) : super(key: key);
  final double rating = 4.0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: background(Str.image),
        child: Column(
          children: [
            Container(
              margin:
                  EdgeInsets.only(top: size.height * 0.08, left: 8, bottom: 10),
              alignment: Alignment(-1, 0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 50,
                    color: Colors.white,
                  )),
            ),
            Container(
              width: size.width * 0.78,
              height: size.height * 0.75,
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(10),
              decoration: frame(),
              child: Scrollbar(
                thickness: 10,
                isAlwaysShown: true,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ở trên có cái nút gì thì bấm đi, ở dưới cũng bấm đi chứ mắc gì bấm cái nút đó =))",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: "Magic4",
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
