import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_application/Views/Hassam%20Task/Auth_Screen/SignUp_As_security.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/colors.dart';

class changeUser extends StatefulWidget {
  const changeUser({super.key, this.Labeltext});
  final Labeltext;

  @override
  State<changeUser> createState() => _changeUserState();
}

class _changeUserState extends State<changeUser> {
  void _showLoginOptionsDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: const Text('You can change Option'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecurityLogin()));
                  },
                  child: const Text('Login as Security Guard:'))
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
            labelText: widget.Labeltext,
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
