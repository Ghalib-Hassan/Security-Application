import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class MyTextField extends StatefulWidget {
  String? labelText;
  String? hintText;
  double? borderRadius;
  TextEditingController? myController;
  bool isEditable;
  Function? validator;

  MyTextField({
    super.key,
    this.labelText,
    this.hintText,
    this.borderRadius,
    this.myController,
    this.isEditable = false,
    this.validator,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return '';
          }
          return null;
        },
        enabled: widget.isEditable,
        style: const TextStyle(color: Colors.black),
        controller: widget.myController,
        decoration: InputDecoration(
          labelText: widget.isEditable ? widget.labelText : null,
          hintText: widget.isEditable ? null : widget.hintText,
          labelStyle: TextStyle(fontSize: 12.sp, color: Colors.black),
        ),
      ),
    );
  }
}
