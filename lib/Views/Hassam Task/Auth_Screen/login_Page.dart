import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:security_application/Custom%20Widgets/text_field.dart';
import 'package:security_application/Views/Hassam%20Task/Auth_Screen/SignUp_As_security.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/bottomNavBar.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/button.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/colors.dart';
import 'package:security_application/Views/Hassam%20Task/custom_widget/dialogbox.dart';

class WelcomScreen extends StatefulWidget {
  const WelcomScreen({super.key});

  @override
  State<WelcomScreen> createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 30),
        child: Center(
          child: Column(
            children: [
              const Text('Welcome Back!',
                  style: TextStyle(
                    color: black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              const Text(
                'Sign in with your email',
                style: TextStyle(color: Colors.black38),
              ),
              const SizedBox(
                height: 30,
              ),
              const MydialogBTN(labeltext: 'Email'),
              const SizedBox(
                height: 10,
              ),
             MyTextField(labelText: 'password'),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(right: 100, bottom: 10),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.black38),
                ),
              ),
              Mybutton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>const Mynav()));
                  },
                  style: TextButton.styleFrom(
                      textStyle: const TextStyle(color: white)),
                  text: 'Login',
                  height: 50,
                  width: 180,
                  color: Darkblue),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  'dont have an account?',
                  style:
                      TextStyle(color: Darkblue, fontWeight: FontWeight.normal),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecurityLogin()));
                    },
                    child: const Text('SignUp'))
              ]),
              const Text(
                'Or login with ',
                style:
                    TextStyle(color: Darkblue, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
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
                      borderRadius: BorderRadius.circular(20),
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
                      borderRadius: BorderRadius.circular(20),
                      color: Darkblue,
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
    );
  }
}
