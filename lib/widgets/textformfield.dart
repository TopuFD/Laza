import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  const MyForm({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          label: Text(labelText),
          hintText: hintText,
          border: OutlineInputBorder()),
    );
  }
}
