import 'package:flutter/material.dart';

void navPush(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}
