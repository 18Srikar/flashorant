import 'dart:async';

import 'package:flashorant/screens/home_page.dart';
import 'package:flashorant/utils/valorant_text.dart';
import 'package:flutter/material.dart';

class SplashFlash extends StatefulWidget {
  const SplashFlash({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _SplashFlashState createState() => _SplashFlashState();
}

class _SplashFlashState extends State<SplashFlash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(title: widget.title),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F1923),
      body: Container(
        child: Center(
          child: AnimatedValoText(text: 'Flashorant'),
        ),
      ),
    );
  }
}
