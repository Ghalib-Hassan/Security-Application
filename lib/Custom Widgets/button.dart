import 'package:flutter/material.dart';
import 'package:security_application/Utils/colors.dart';

class Mybutton extends StatelessWidget {
  const Mybutton({
    super.key,
    required this.onPressed,
    required this.style,
    required this.text,
    required this.height,
    required this.width,
    required this.color,
  });

  final double height;
  final double width;
  final Color color;
  final VoidCallback onPressed;
  final ButtonStyle? style;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: darkblue)),
      child: TextButton(
        onPressed: onPressed,
        style: style,
        child: Text(
          text,
          style: style?.textStyle?.resolve({}) ?? const TextStyle(),
        ),
      ),
    );
  }
}
