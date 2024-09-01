import 'package:flutter/material.dart';
import 'package:security_application/Views/Hassam%20Task/Auth_Screen/login_Page.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/button.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/colors.dart';

class Desktopscreen extends StatefulWidget {
  const Desktopscreen({super.key});

  @override
  State<Desktopscreen> createState() => _DesktopscreenState();
}

class _DesktopscreenState extends State<Desktopscreen> {
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
              padding: EdgeInsets.only(bottom: 150, left: 50),
              child: Row(
                children: [
                  Text(
                    'Make your \nand \nothers \nlife secure.',
                    style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32, // Increased font size for desktop
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 70),
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
                  foregroundColor: Darkblue, // Set text color using foregroundColor
                ),
                text: 'Get started',
                height: 60, // Increased height for desktop
                width: 250, // Increased width for desktop
                color: white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
