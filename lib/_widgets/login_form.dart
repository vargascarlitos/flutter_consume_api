import 'package:flutter/material.dart';
import 'package:flutter_consume_api/_widgets/input_text.dart';
import 'package:flutter_consume_api/utils/responsive.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Positioned(
        bottom: 30,
        left: 20,
        right: 20,
        child: Column(
          children: [
            InputText(
              label: "emial address".toUpperCase(),
              keyboardType: TextInputType.emailAddress,
              fontSize: responsive.dp(1.5),
            ),
            Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black12))),
                child: Row(
                  children: [
                    Expanded(
                        child: InputText(
                      label: "password".toUpperCase(),
                      obscureText: true,
                      borderEnabled: false,
                          fontSize: responsive.dp(1.5),
                    )),
                    TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(vertical: 10.0))),
                        onPressed: () {},
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w400, fontSize: responsive.dp(1.5)),
                        ))
                  ],
                )),
            SizedBox(
              height: responsive.dp(5),
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      onPressed: () {},
                      child: Text(
                        "Sign in",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.pinkAccent,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: responsive.dp(2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New to Friendly Desi?",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400, fontSize: responsive.dp(1.5))),
                MaterialButton(
                  onPressed: () {},
                  child: Text("Sign up",
                      style: TextStyle(color: Colors.pinkAccent, fontSize: responsive.dp(1.5))),
                )
              ],
            ),
            SizedBox(
              height: responsive.dp(10),
            )
          ],
        ));
  }
}
