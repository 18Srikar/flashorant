import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(
      {Key? key, required this.map, required this.agent, required this.gun})
      : super(key: key);
  final String map;
  final String agent;
  final String gun;

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result Page"),
      ),
      body: Center(
        child: Text(
            "Thank you for submitting your responses.\nSubmitted Responses : \nMap: ${widget.map + checkBreeze()} \nAgent: ${checkYoru() + widget.agent} \nGun: ${widget.gun + checkGun()}"),
      ),
    );
  }

  checkBreeze() {
    if (widget.map == "Breeze") {
      return " gei";
    } else
      return "";
  }

  checkYoru() {
    if (widget.agent == "Yoru") {
      return "Noob ";
    } else
      return "";
  }

  checkGun() {
    if (widget.gun == "Vandal") {
      return "(Phantom better)";
    } else
      return "";
  }
}
