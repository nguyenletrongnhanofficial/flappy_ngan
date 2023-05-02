// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:flappy_ngan/layouts/Widgets/widget_bird.dart';
import 'package:flappy_ngan/Resources/strings.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../globals/constant.dart';
import '../../globals/functions.dart';
import '../Widgets/widget_gradient _button.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);
  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final myBox = Hive.box('user');

  @override
  void initState() {
    // Todo : initialize the database  <---
    init();
    super.initState();
  }

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
            // Flappy bird text
            Container(
                margin: EdgeInsets.only(top: size.height * 0.20),
                child: myText("Flappy Ngân", Colors.white, 40)),
            Bird(yAxis, birdWidth, birdHeight),
            _buttons(),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "Game được code bởi chính tay Nguyễn Lê Trọng Nhân làm tặng người yêu là Võ Thị Hồng Ngân😇❤️",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, fontSize: 15, fontFamily: "Magic4"),
              ),
            ), // Best T
          ],
        ),
      ),
    );
  }
}

// three buttons
Column _buttons() {
  return Column(
    children: [
      Button(
        buttonType: "text",
        height: 60,
        width: 278,
        icon: Icon(
          Icons.play_arrow_rounded,
          size: 60,
          color: Colors.green,
        ),
        page: Str.gamePage,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Button(
            buttonType: "icon",
            height: 60,
            width: 110,
            icon: Icon(
              Icons.settings,
              size: 40,
              color: Colors.grey.shade900,
            ),
            page: Str.settings,
          ),
          Button(
            buttonType: "icon",
            height: 60,
            width: 110,
            icon: Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 40,
            ),
            page: Str.rateUs,
          ),
        ],
      ),
    ],
  );
}
