// ignore_for_file: prefer_const_constructors

import 'package:flappy_ngan/databases/database.dart';
import 'package:flappy_ngan/Resources/strings.dart';
import 'package:flutter/material.dart';

import '../../globals/constant.dart';
import '../../globals/functions.dart';

class BirdSettings extends StatelessWidget {
  const BirdSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: myText("Chọn hình cho đẹp à", Colors.black, 20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Str.bird = "assets/pics/bird.png";
                write("bird", Str.bird);
              },
              child: SizedBox(
                width: 75,
                height: 75,
                child: Image.asset(
                  "assets/pics/bird.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Str.bird = "assets/pics/blue.png";
                write("bird", Str.bird);
              },
              child: SizedBox(
                width: 75,
                height: 75,
                child: Image.asset(
                  "assets/pics/blue.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Str.bird = "assets/pics/green.png";
                write("bird", Str.bird);
              },
              child: SizedBox(
                width: 75,
                height: 75,
                child: Image.asset(
                  "assets/pics/green.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
