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
    final Size size = MediaQuery
        .of(context)
        .size;
    final double _pinkSize = size.width * 0.8;
    final double _orangeSize = size.width * 0.55;
    return Scaffold(
      body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                    top: -(_pinkSize) * 0.4,
                    right: -(_pinkSize) * 0.2,
                    child: Circle(
                      size: _pinkSize,
                      colors: [Colors.pinkAccent, Colors.pink],
                    )),
                Positioned(
                    top: -(_orangeSize) * 0.55,
                    left: -(_orangeSize) * 0.15,
                    child: Circle(
                      size: _orangeSize,
                      colors: [Colors.deepOrangeAccent, Colors.deepOrange],
                    )),
                Positioned(
                    top: _pinkSize*0.3,
                    child: IconContainer(
                      size: size.width*0.25,
                    ))
              ],
            ),
          )),
    );
  }
}
