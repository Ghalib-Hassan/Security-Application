import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PremiumTextField extends StatefulWidget {
  TextEditingController? myController;

  PremiumTextField({
    super.key,
    this.myController,
  });

  @override
  State<PremiumTextField> createState() => _PremiumTextFieldState();
}

class _PremiumTextFieldState extends State<PremiumTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.black),
      controller: widget.myController,
      decoration: const InputDecoration(border: OutlineInputBorder()),
    );
  }
}
