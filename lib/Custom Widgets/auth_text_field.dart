import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class MyTextField2 extends StatefulWidget {
  String? labelText;
  String? hintText;
  double? borderRadius;
  TextEditingController? myController;
  String? Function(String?)? validator;

  MyTextField2({
    super.key,
    this.labelText,
    this.hintText,
    this.borderRadius,
    this.myController,
    this.validator,
  });

  @override
  State<MyTextField2> createState() => _MyTextField2State();
}

class _MyTextField2State extends State<MyTextField2> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      style: const TextStyle(color: Colors.black),
      controller: widget.myController,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        labelStyle: TextStyle(fontSize: 12.sp, color: Colors.black),
      ),
    );
  }
}
