import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class MyTextField3 extends StatefulWidget {
  String? labelText;
  double? borderRadius;
  TextEditingController? myController;
  Function? validator;

  MyTextField3({
    super.key,
    this.labelText,
    this.borderRadius,
    this.myController,
    this.validator,
  });

  @override
  State<MyTextField3> createState() => _MyTextField3State();
}

class _MyTextField3State extends State<MyTextField3> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return '';
        }
        return null;
      },
      style: const TextStyle(color: Colors.black),
      controller: widget.myController,
      decoration: InputDecoration(
        labelText: widget.labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 20),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelStyle: TextStyle(fontSize: 12.sp, color: Colors.black),
      ),
    );
  }
}
