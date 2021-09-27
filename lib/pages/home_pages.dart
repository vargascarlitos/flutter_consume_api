import 'package:flutter/material.dart';
import 'package:flutter_consume_api/_widgets/circle.dart';
import 'package:flutter_consume_api/_widgets/icon_container.dart';
import 'package:flutter_consume_api/_widgets/login_form.dart';
import 'package:flutter_consume_api/utils/responsive.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final double _pinkSize = responsive.wp(80);
    final double _orangeSize = responsive.wp(55);
    return Scaffold(
      body: SafeArea(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
        child: SingleChildScrollView(
          child: Container(
            height: responsive.height,
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
                    top: _pinkSize * 0.3,
                    child: Column(
                      children: [
                        IconContainer(
                          size: responsive.wp(25),
                        ),
                        SizedBox(
                          height: responsive.dp(3),
                        ),
                        Text(
                          "Hello Again!\n Welcolme Back!",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: responsive.dp(2)),
                        )
                      ],
                    )),
                LoginForm()
              ],
            ),
          ),
        )
      )),
    );
  }
}
