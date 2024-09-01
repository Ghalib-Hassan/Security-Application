import 'package:flutter/material.dart';
import 'package:security_application/Custom%20Widgets/text_field.dart';
import 'package:security_application/Views/Hassam%20Task/Auth_Screen/Change_User.dart';
import 'package:security_application/Views/Hassam%20Task/Auth_Screen/login_Page.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/button.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/colors.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50,),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text('Welcome Back!',
                    style: TextStyle(
                      color: black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
                const Text(
                  'Create Your Account',
                  style: TextStyle(color: Colors.black38),
                ),
                const SizedBox(
                  height: 30,
                ),
                const changeUser(
                  Labeltext: 'signUp as user',
                ),
                const SizedBox(
                  height: 10,
                ),
             MyTextField(labelText: 'Firstname'),
             const SizedBox(height: 5),
             MyTextField(labelText: 'Lastname '),
             const SizedBox(height: 5),
             MyTextField(labelText: 'Email'),
             const SizedBox(height: 5),
             MyTextField(labelText: 'Mobile Number'),
             const SizedBox(height: 5),
             MyTextField(labelText: 'Gender'),
             const SizedBox(height: 5),
             MyTextField(labelText: 'password'),
             const SizedBox(height: 5),
              MyTextField(labelText: 'Confirm Password'),
             const SizedBox(height: 10),
                Mybutton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(color: white)),
                    text: 'Login',
                    height: 50,
                    width: 180,
                    color: Darkblue),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account?',),
                         TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WelcomScreen()));
                      },
                      child: const Text('Sign In'))
                      ],
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}