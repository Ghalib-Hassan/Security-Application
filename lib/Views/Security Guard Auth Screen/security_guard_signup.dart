import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/auth_text_field.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Custom%20Widgets/password_text_field.dart';
import 'package:security_application/Utils/colors.dart';

class SecurityGuardSignup extends StatefulWidget {
  const SecurityGuardSignup({super.key});

  @override
  State<SecurityGuardSignup> createState() => _SecurityGuardSignupState();
}

class _SecurityGuardSignupState extends State<SecurityGuardSignup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
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
                      MyTextField2(labelText: 'First Name'),
                      SizedBox(
                        height: 8.h,
                      ),
                      MyTextField2(labelText: 'Last Name'),
                      SizedBox(
                        height: 8.h,
                      ),
                      MyTextField2(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your Email';
                            }
                            return null;
                          },
                          myController: emailController,
                          labelText: 'Email'),
                      SizedBox(
                        height: 8.h,
                      ),
                      MyTextField2(labelText: 'Mobile Number'),
                      SizedBox(
                        height: 8.h,
                      ),
                      MyTextField2(labelText: 'Gender'),
                      SizedBox(
                        height: 8.h,
                      ),
                      MyTextField2(labelText: 'Add your height'),
                      SizedBox(
                        height: 8.h,
                      ),
                      MyTextField2(labelText: 'Add your weight'),
                      SizedBox(
                        height: 8.h,
                      ),
                      MyTextField2(labelText: 'License Type (Optional)'),
                      SizedBox(
                        height: 10.h,
                      ),
                      PasswordTextField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your Password';
                            }
                            return null;
                          },
                          myController: passwordController,
                          labelText: 'Password'),
                      SizedBox(
                        height: 10.h,
                      ),
                      PasswordTextField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your Confirm Password';
                            }
                            return null;
                          },
                          myController: confirmController,
                          labelText: 'Confirm Password'),
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
                    isLoading: isLoading,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          isLoading = true;
                        });

                        if (emailController.text.isEmpty ||
                            passwordController.text.isEmpty) {
                          Fluttertoast.showToast(
                            msg: "Please fill all the fields",
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
                        } else if (passwordController.text !=
                            confirmController.text) {
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
                        } else if (!emailController.text.contains('@')) {
                          Fluttertoast.showToast(
                            msg: "Please provide your correct email",
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
                        } else {
                          auth
                              .createUserWithEmailAndPassword(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                          )
                              .then((value) {
                            setState(() {
                              isLoading = false;
                            });

                            Fluttertoast.showToast(
                              msg: "User added successfully!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: appcolor,
                              textColor: Colors.white,
                              fontSize: 16.0,
                            );
                          }).onError((error, v) {
                            setState(() {
                              isLoading = false;
                            });

                            Fluttertoast.showToast(
                              msg: 'Email already exists',
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.TOP,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.green,
                              textColor: Colors.white,
                              fontSize: 16.0,
                            );
                          });
                        }
                      }
                    },
                  ),
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
                                    color:
                                        const Color(0x00293462).withOpacity(1),
                                    fontWeight: FontWeight.bold)),
                          ]))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
