import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/colors.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({
    super.key,
    required this.labeltext,
  });

  final String labeltext;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  // final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 250.w,
      child: TextField(
        // controller: _controller,
        decoration: InputDecoration(
          labelText: widget.labeltext,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: black),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
