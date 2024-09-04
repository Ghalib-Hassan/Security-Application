import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginDropDown extends StatefulWidget {
  final String? labeltext;
  final Function(String?)? onSelected;

  const LoginDropDown({super.key, this.labeltext, this.onSelected});

  @override
  State<LoginDropDown> createState() => _LoginDropDownState();
}

class _LoginDropDownState extends State<LoginDropDown> {
  String? _selectedLoginOption;

  @override
  void dispose() {
    // Reset the dropdown value when the widget is disposed
    _selectedLoginOption = null;
    super.dispose();
  }

  void _onDropdownChanged(String? newValue) {
    setState(() {
      _selectedLoginOption = newValue;
    });

    // Call the callback to pass the selected option to the parent widget
    widget.onSelected?.call(_selectedLoginOption);
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
                value: 'Login as User',
                child: Text('🧑‍💻 Login as User'),
              ),
              DropdownMenuItem<String>(
                value: 'Login as Security Guard',
                child: Text('👮 Login as Security Guard'),
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
