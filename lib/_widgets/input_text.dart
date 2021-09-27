import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool borderEnabled;
  final double fontSize;
  InputText({Key key, this.label = "", this.keyboardType = TextInputType.text, this.obscureText = false, this.borderEnabled = true, this.fontSize = 15}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: this.fontSize),
      keyboardType: this.keyboardType,
      obscureText: this.obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 5.0),
        enabledBorder: this.borderEnabled ? UnderlineInputBorder(borderSide: BorderSide(
          color: Colors.black12
        )) : InputBorder.none,
        labelText: this.label,
        labelStyle: TextStyle(
          color: Colors.black45,
          fontWeight: FontWeight.w500,
        )
      ),
    );
  }
}