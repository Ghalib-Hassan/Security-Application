import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Utils/colors.dart';
import 'package:security_application/Utils/nav_push.dart';
import 'package:security_application/Views/Auth_Screen/login_page.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('Images/security.png'),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 500, bottom: 50, left: 30),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.poppins(
                      fontStyle: FontStyle.normal,
                      color: white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                    children: const [
                      TextSpan(text: "Make your \n"),
                      TextSpan(text: "and \n"),
                      TextSpan(text: "other's \n"),
                      TextSpan(text: "life secure."),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: CustomButton(
                buttonText: 'Get Started',
                onPressed: () {
                  navPush(context, const LoginScreen());
                },
                buttonColor: white,
                textColor: appcolor,
                buttonWidth: 200.w,
                buttonHeight: 40.h,
                buttonRadius: 10,
                buttonFontWeight: FontWeight.bold,
              ))
        ],
      ),
    );
  }
}
