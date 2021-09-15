import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconContainer extends StatelessWidget {
  final double size;

  const IconContainer({Key key, @required this.size})
      : assert(size != null && size > 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10.0)],
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
        child: SvgPicture.asset(
          "assets/perfil.svg",
          width: 80,
          height: 80,
        ),
      ),
    );
  }
}
