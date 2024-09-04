// ignore: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/auth_text_field.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Custom%20Widgets/password_text_field.dart';
import 'package:security_application/Custom%20Widgets/sign_up_type.dart';
import 'package:security_application/Utils/colors.dart';
import 'package:security_application/Utils/nav_push.dart';
import 'package:security_application/Views/Auth_Screen/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecurityLogin extends StatefulWidget {
  const SecurityLogin({super.key});

  @override
  State<SecurityLogin> createState() => _SecurityLoginState();
}

class _SecurityLoginState extends State<SecurityLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  void loadData() {
    const String pattern =
        r'^[a-zA-Z0-9._%+-]+@(gmail|hotmail|yahoo|outlook|[a-zA-Z0-9.-]+)\.com$';
    final RegExp regex = RegExp(pattern);

    if (_formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });

      if (emailController.text.isEmpty || passwordController.text.isEmpty) {
        Fluttertoast.showToast(
          msg: "Please fill all the fields",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.amber,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        setState(() {
          isLoading = false;
        });
      } else if (passwordController.text != confirmController.text) {
        Fluttertoast.showToast(
          msg: "Please ensure your passwords are identical.",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        setState(() {
          isLoading = false;
        });
      } else if (!regex.hasMatch(emailController.text)) {
        Fluttertoast.showToast(
          msg: "Please provide a valid email address",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blueGrey,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        setState(() {
          isLoading = false;
        });
      } else {
        auth
            .createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        )
            .then((value) async {
          setState(() {
            isLoading = false;
          });
          final SharedPreferences sp = await SharedPreferences.getInstance();
          Fluttertoast.showToast(
            msg: "User added successfully!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 2,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0,
          );
          sp.setString('Security', 'Login as Security Guard');
          // ignore: use_build_context_synchronously
          navPush(context, const LoginScreen());
        }).onError((error, stackTrace) {
          setState(() {
            isLoading = false;
          });

          String errorMessage = 'An error occurred';
          if (error.toString().contains('email-already-in-use')) {
            errorMessage = 'Email already exists';
          } else if (error.toString().contains('invalid-email')) {
            errorMessage = 'Invalid email address';
          } else if (error.toString().contains('weak-password')) {
            errorMessage = 'The password is too weak';
          }

          Fluttertoast.showToast(
            msg: errorMessage,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        });
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
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  'Welcome Back!',
                  style: GoogleFonts.poppins(
                      color: black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp),
                ),
                Text(
                  'Create your account',
                  style: GoogleFonts.poppins(
                      color: lightGrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const SignUpDropDown(labeltext: '👮 SignUp as Security Guard'),
                SizedBox(
                  height: 10.h,
                ),
                SimpleAuthTextField(
                    keyboardType: TextInputType.name, labelText: 'First Name'),
                SizedBox(height: 10.h),
                SimpleAuthTextField(
                    keyboardType: TextInputType.name, labelText: 'Last Name '),
                SizedBox(height: 10.h),
                SimpleAuthTextField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your Email';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    myController: emailController,
                    labelText: 'Email'),
                SizedBox(height: 10.h),
                SimpleAuthTextField(
                    keyboardType: TextInputType.phone,
                    labelText: 'Mobile Number'),
                SizedBox(height: 10.h),
                SimpleAuthTextField(
                    keyboardType: TextInputType.text, labelText: 'Gender'),
                SizedBox(height: 10.h),
                SimpleAuthTextField(
                    keyboardType: TextInputType.text,
                    labelText: 'Add your height'),
                SizedBox(height: 10.h),
                SimpleAuthTextField(
                    keyboardType: TextInputType.number,
                    labelText: 'Add your weight'),
                SizedBox(height: 10.h),
                SimpleAuthTextField(
                    keyboardType: TextInputType.text,
                    labelText: 'License Type (Optional)'),
                SizedBox(height: 10.h),
                PasswordTextField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your Password';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    myController: passwordController,
                    labelText: 'Password'),
                SizedBox(height: 10.h),
                PasswordTextField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your Confirm Password';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    myController: confirmController,
                    labelText: 'Confirm Password'),
                SizedBox(height: 20.h),
                CustomButton(
                  buttonWidth: 240.w,
                  buttonHeight: 40.h,
                  buttonText: 'Sign Up',
                  isLoading: isLoading,
                  onPressed: () {
                    loadData();
                  },
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Already have an account? ",
                    style: GoogleFonts.lato(color: black, fontSize: 12.sp),
                  ),
                  InkWell(
                    onTap: () {
                      navPush(context, const LoginScreen());
                    },
                    child: Text(
                      'SignIn',
                      style: GoogleFonts.lato(color: appcolor, fontSize: 12.sp),
                    ),
                  )
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
