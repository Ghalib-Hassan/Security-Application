import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class MyTextField extends StatefulWidget {
  String? labelText;
  String? hintText;
  double? borderRadius;
  TextEditingController? myController;
  bool isEditable;

  MyTextField({
    super.key,
    this.labelText,
    this.hintText,
    this.borderRadius,
    this.myController,
    this.isEditable = false,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: widget.isEditable,
      style: const TextStyle(color: Colors.black),
      controller: widget.myController,
      decoration: InputDecoration(
        labelText: widget.isEditable ? widget.labelText : null,
        hintText: widget.isEditable ? null : widget.hintText,
        labelStyle: TextStyle(fontSize: 12.sp),
      ),
    );
  }
}
