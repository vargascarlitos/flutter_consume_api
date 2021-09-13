import 'package:flutter/material.dart';
import 'package:flutter_consume_api/_widgets/circle.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(child: Circle(
                    size: 200.0,
                    colors: [
                      Colors.deepOrange,
                      Colors.deepOrangeAccent
                    ],
                  ))
                ],
              ),
          )
      ),
    );
  }

}