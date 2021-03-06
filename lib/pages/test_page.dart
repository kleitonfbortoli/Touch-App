import 'package:flutter/material.dart';
import 'package:touch/forms/atividade_form.dart';
import 'package:touch/painters/white_painter.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: CustomPaint(
          painter: WhitePainter(),
          child: AtividadeForm()
      )
    );
  }
}
