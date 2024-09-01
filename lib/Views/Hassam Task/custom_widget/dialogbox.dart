import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_application/Views/Hassam%20Task/Auth_Screen/SignUp_As_security.dart';
import 'package:security_application/Views/Hassam%20Task/Auth_Screen/userSignUp.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/colors.dart';

class MydialogBTN extends StatefulWidget {
  final String labeltext;

  const MydialogBTN({super.key, required this.labeltext});

  @override
  State<MydialogBTN> createState() => _MydialogBTNState();
}

class _MydialogBTNState extends State<MydialogBTN> {
  void _showLoginOptionsDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Login Option'),
            content: const Text('Select login style:'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UserLogin()));
                  },
                  child: const Text('🧑‍💻 Login as User')),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecurityLogin()));
                  },
                  child: const Text('👮 Login as Security Guard'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 250.w,
      child: TextField(
        decoration: InputDecoration(
            labelText: widget.labeltext,
            focusedBorder:
                const OutlineInputBorder(borderSide: BorderSide(color: black)),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: black),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            suffixIcon: IconButton(
                onPressed: () {
                  _showLoginOptionsDialog(context);
                },
                icon: const Icon(Icons.arrow_drop_down))),
      ),
    );
  }
}
