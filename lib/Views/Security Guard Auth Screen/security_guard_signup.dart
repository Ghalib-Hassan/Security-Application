import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Custom%20Widgets/password_text_field.dart';
import 'package:security_application/Custom%20Widgets/text_field.dart';

class SecurityGuardSignup extends StatelessWidget {
  const SecurityGuardSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  children: [
                    Text(
                      'Welcome',
                      style: GoogleFonts.aBeeZee(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.sp),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Create your account',
                      style: GoogleFonts.aBeeZee(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyTextField(labelText: 'First Name'),
                    SizedBox(
                      height: 8.h,
                    ),
                    MyTextField(labelText: 'Last Name'),
                    SizedBox(
                      height: 8.h,
                    ),
                    MyTextField(labelText: 'Email'),
                    SizedBox(
                      height: 8.h,
                    ),
                    MyTextField(labelText: 'Mobile Number'),
                    SizedBox(
                      height: 8.h,
                    ),
                    MyTextField(labelText: 'Gender'),
                    SizedBox(
                      height: 8.h,
                    ),
                    MyTextField(labelText: 'Add your height'),
                    SizedBox(
                      height: 8.h,
                    ),
                    MyTextField(labelText: 'Add your weight'),
                    SizedBox(
                      height: 8.h,
                    ),
                    MyTextField(labelText: 'License Type (Optional)'),
                    SizedBox(
                      height: 8.h,
                    ),
                    PasswordTextField(labelText: 'Password'),
                    SizedBox(
                      height: 8.h,
                    ),
                    PasswordTextField(labelText: 'Confirm Password'),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomButton(
                    buttonWidth: 230.w,
                    buttonHeight: 40.h,
                    buttonFontSize: 20.sp,
                    buttonText: 'Sign Up',
                    buttonFontWeight: FontWeight.bold,
                    onPressed: () {}),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(
                            style: GoogleFonts.poppins(
                                color: Theme.of(context).colorScheme.primary),
                            children: [
                          const TextSpan(text: 'Already have an account? '),
                          TextSpan(
                              text: 'Sign in',
                              style: TextStyle(
                                  color: const Color(0x00293462).withOpacity(1),
                                  fontWeight: FontWeight.bold)),
                        ]))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
