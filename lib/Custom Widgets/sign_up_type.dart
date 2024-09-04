import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Utils/push_replace.dart';
import 'package:security_application/Views/Auth_Screen/security_guard_sign_up.dart';
import 'package:security_application/Views/Auth_Screen/user_sign_up.dart';

class SignUpDropDown extends StatefulWidget {
  final String? labeltext;

  const SignUpDropDown({super.key, this.labeltext});

  @override
  State<SignUpDropDown> createState() => _SignUpDropDownState();
}

class _SignUpDropDownState extends State<SignUpDropDown> {
  String? _selectedLoginOption;

  @override
  void dispose() {
    _selectedLoginOption = null;
    super.dispose();
  }

  void _onDropdownChanged(String? newValue) {
    setState(() {
      _selectedLoginOption = newValue;
    });

    if (_selectedLoginOption == 'SignUp as User') {
      pushReplace(context, const UserSignUp());
      _resetDropdown();
    } else if (_selectedLoginOption == 'SignUp as Security Guard') {
      pushReplace(context, const SecurityLogin());
      _resetDropdown();
    }
  }

  void _resetDropdown() {
    setState(() {
      _selectedLoginOption = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 250.w,
      child: InputDecorator(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black.withOpacity(.4))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black.withOpacity(.4)),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: _selectedLoginOption,
            hint: widget.labeltext != null
                ? Text(
                    widget.labeltext!,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )
                : const Text('Select your login type'),
            isExpanded: true,
            items: const [
              DropdownMenuItem<String>(
                value: 'SignUp as User',
                child: Text('🧑‍💻 SignUp as User'),
              ),
              DropdownMenuItem<String>(
                value: 'SignUp as Security Guard',
                child: Text('👮 SignUp as Security Guard'),
              ),
            ],
            onChanged: _onDropdownChanged,
            icon: const Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
