import 'package:flutter/material.dart';
import 'package:security_application/Views/Hassam%20Task/Auth_Screen/login_Page.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/button.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/colors.dart';

class Mobilescreen extends StatefulWidget {
  const Mobilescreen({super.key});

  @override
  State<Mobilescreen> createState() => _MobilescreenState();
}

class _MobilescreenState extends State<Mobilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('asset/security.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 100, left: 30),
              child: Row(
                children: [
                  Text(
                    'Make your \nand \nothers \nlife secure.',
                    style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Mybutton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WelcomScreen(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor:Darkblue, 
                ),
                text: 'Get Started',
                height: 50,
                width: 200,
                color: white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
