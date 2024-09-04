import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Utils/colors.dart';
import 'package:security_application/Utils/push_replace.dart';
import 'package:security_application/Views/Onboarding/onboarding.dart';
import 'package:security_application/Views/Security%20Guard%20App%20Screen/home_screen.dart';
import 'package:security_application/Views/User%20App%20Screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLogin = false;
  String user = '';
  String security = '';

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      isLogin = sp.getBool('isLogin') ?? false;
      user = sp.getString('User') ?? '';
      security = sp.getString('Security') ?? '';
    });

    await Future.delayed(const Duration(seconds: 3));

    if (isLogin) {
      if (user == 'Login as User') {
        // ignore: use_build_context_synchronously
        pushReplace(context, const UserHomeScreen());
      } else if (security == 'Login as Security Guard') {
        // ignore: use_build_context_synchronously
        pushReplace(context, const SecurityHomeScreen());
      }
    } else {
      // ignore: use_build_context_synchronously
      pushReplace(context, const Onboarding());
    }
  }

  @override
  Widget build(BuildContext context) {
    // Future.delayed(const Duration(seconds: 3), () {
    //   if (isLogin) {
    //     if (user == 'Login as User') {
    //       pushReplace(context, const UserHomeScreen());
    //     } else if (security == 'Login as Security Guard') {
    //       pushReplace(context, const SecurityHomeScreen());
    //     }
    //   } else {
    //     pushReplace(context, const Onboarding());
    //   }
    // });
    return Scaffold(
      backgroundColor: appcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text: TextSpan(
                    style: GoogleFonts.roboto(
                        color: Colors.white, fontSize: 16.sp),
                    children: [
                  const TextSpan(
                      text: 'On Call\n',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  TextSpan(
                      text: 'Protection',
                      style: GoogleFonts.poppins(
                          fontSize: 20.sp, fontWeight: FontWeight.bold))
                ]))
          ],
        ),
      ),
    );
  }
}
