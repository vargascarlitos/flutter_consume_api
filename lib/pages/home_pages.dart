import 'package:flutter/material.dart';
import 'package:flutter_consume_api/_widgets/circle.dart';
import 'package:flutter_consume_api/_widgets/icon_container.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
                top: -(size.width*0.8)*0.4,
                right: -(size.width*0.8)*0.2,
                child: Circle(
                  size: size.width*0.8,
                  colors: [Colors.pinkAccent, Colors.pink],
                )),
            Positioned(
                top: -(size.width*0.55)*0.55,
                left: -(size.width*0.55)*0.15,
                child: Circle(
                  size: size.width*0.55,
                  colors: [Colors.deepOrangeAccent, Colors.deepOrange],
                )),
            Positioned(
                child: IconContainer())
          ],
        ),
      )),
    );
  }
}
