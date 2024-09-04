import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:security_application/Custom%20Widgets/auth_text_field.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Custom%20Widgets/login_type.dart';
import 'package:security_application/Custom%20Widgets/password_text_field.dart';
import 'package:security_application/Utils/colors.dart';
import 'package:security_application/Utils/nav_push.dart';
import 'package:security_application/Utils/push_replace.dart';
import 'package:security_application/Views/Auth_Screen/user_sign_up.dart';
import 'package:security_application/Views/Security%20Guard%20App%20Screen/home_screen.dart';
import 'package:security_application/Views/User%20App%20Screens/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  String? _selectedLoginOption;
  String user = '';
  String security = '';

  void _handleLoginOption(String? option) {
    setState(() {
      _selectedLoginOption = option;
    });
  }

  Future<void> loadData() async {
    if (_selectedLoginOption == null) {
      Fluttertoast.showToast(
        msg: "Please select a login type",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return;
    }

    if (_formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });

      try {
        await auth.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );

        final SharedPreferences sp = await SharedPreferences.getInstance();
        user = sp.getString('User') ?? '';
        security = sp.getString('Security') ?? '';

        if (_selectedLoginOption == 'Login as User' &&
            user == 'Login as User') {
          sp.setBool('isLogin', true);
          Fluttertoast.showToast(
            msg: 'Login Successfully',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0,
          );
          // sp.setString('User', 'Login as User');
          // Navigate to User Home Screen
          // ignore: use_build_context_synchronously
          pushReplace(context, const UserHomeScreen());
        } else if (_selectedLoginOption == 'Login as Security Guard' &&
            security == 'Login as Security Guard') {
          sp.setBool('isLogin', true);
          Fluttertoast.showToast(
            msg: 'Login Successfully',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0,
          );
          // sp.setString('Security', 'Login as Security Guard');
          // Navigate to Security Guard Home Screen
          // ignore: use_build_context_synchronously
          pushReplace(context, const SecurityHomeScreen());
        }
      } catch (error) {
        setState(() {
          isLoading = false;
        });
        String errorMessage = 'An error occurred';
        if (error.toString().contains('wrong-password')) {
          errorMessage = 'Incorrect password';
        } else if (error.toString().contains('user-not-found')) {
          errorMessage = 'User not found';
        } else {
          errorMessage = 'Email or password is incorrect';
        }

        Fluttertoast.showToast(
          msg: errorMessage,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                Text(
                  'Welcome Back!',
                  style: GoogleFonts.poppins(
                      color: black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp),
                ),
                Text(
                  'Sign in with your email',
                  style: GoogleFonts.poppins(
                      color: lightGrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp),
                ),
                SizedBox(height: 20.h),
                LoginDropDown(
                  labeltext: 'Select your login type',
                  onSelected: _handleLoginOption,
                ),
                SizedBox(height: 15.h),
                SimpleAuthTextField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your Email';
                    }
                    return null;
                  },
                  myController: emailController,
                  keyboardType: TextInputType.emailAddress,
                  labelText: 'Email',
                ),
                SizedBox(height: 10.h),
                PasswordTextField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your Password';
                    }
                    return null;
                  },
                  myController: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  labelText: 'Password',
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.only(right: 100, bottom: 30),
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: lightGrey),
                  ),
                ),
                CustomButton(
                  buttonWidth: 240.w,
                  buttonHeight: 40.h,
                  buttonText: 'Login',
                  isLoading: isLoading,
                  onPressed: loadData,
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: GoogleFonts.lato(color: black, fontSize: 12.sp),
                    ),
                    InkWell(
                      onTap: () {
                        navPush(context, const UserSignUp());
                      },
                      child: Text(
                        'Sign Up',
                        style:
                            GoogleFonts.lato(color: appcolor, fontSize: 12.sp),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Center(
                  child: Text(
                    'Or Sign In with ',
                    style: GoogleFonts.poppins(
                        color: darkblue, fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: black,
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.apple,
                            color: white,
                          )),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.google,
                            color: white,
                          )),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: darkblue,
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.facebookF,
                            color: white,
                          )),
                    ),
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
