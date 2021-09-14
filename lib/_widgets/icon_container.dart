import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      padding: EdgeInsets.all(20),
      //color: Colors.white,
      child: Center(
        child: SvgPicture.asset("assets/icon.png", width: 80, height: 80,),
      ),
    );
  }

}