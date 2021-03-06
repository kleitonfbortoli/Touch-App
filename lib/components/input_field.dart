import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;
  final TextInputType input_type;
  final TextEditingController controller;
  const InputField(
      {
        Key? key,
        required this.label,
        required this.input_type,
        required this.controller,
      }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: input_type,
        controller: controller,
        style: const TextStyle(color: Colors.black, fontSize: 20),
        decoration: InputDecoration(
            labelText: label,
            filled: true,
            fillColor: Colors.white,
            labelStyle: const TextStyle(color: Colors.black),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1.5
              ),
            )
        )
    );
  }
}
