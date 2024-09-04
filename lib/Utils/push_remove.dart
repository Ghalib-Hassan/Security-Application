import 'package:flutter/material.dart';

void pushRemove(BuildContext context, Widget page) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => page),
      (Route<dynamic> route) => false);
}
