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
      width: this.size,
      height: this.size,
      padding: EdgeInsets.all(this.size*0.15),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 20.0, offset: Offset(0,10))],
        borderRadius: BorderRadius.circular(this.size*0.15),
      ),
      child: Center(
        child: SvgPicture.asset(
          "assets/perfil.svg",
          width: this.size*0.8,
          height: this.size*0.8,
        ),
      ),
    );
  }
}
