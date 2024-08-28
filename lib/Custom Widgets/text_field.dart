import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class MyTextField extends StatefulWidget {
  String labelText;
  double? borderRadius;
  TextEditingController? myController;
  MyTextField(
      {super.key,
      required this.labelText,
      this.borderRadius,
      this.myController});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.black),
      controller: widget.myController,
      decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: TextStyle(fontSize: 12.sp),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 10))),
    );
  }
}
