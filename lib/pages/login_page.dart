import 'package:flutter/material.dart';
import 'package:touch/forms/login_form.dart';
import 'package:touch/painters/login_painter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: CustomPaint(
          painter: LoginPainter(),
          child: LoginForm()
        )
    );
  }
}
