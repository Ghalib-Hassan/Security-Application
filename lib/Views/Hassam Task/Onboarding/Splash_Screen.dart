import 'package:flutter/material.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/colors.dart';
import 'package:security_application/Views/Hassam%20Task/responsive/Mobile.dart';
import 'package:security_application/Views/Hassam%20Task/responsive/desktop.dart';
import 'package:security_application/Views/Hassam%20Task/responsive/layouts.dart';
import 'package:security_application/Views/Hassam%20Task/responsive/tablet.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const ResponsiveLayout(
                  mobilescaffold: Mobilescreen(),
                  tabletscaffold: Tabletscreen(),
                  desktopscaffold: Desktopscreen())));
    });
    return const Scaffold(
      backgroundColor: blue,
      body: Center(
        child: SizedBox(
          height: 70,
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 90, top: 5),
                child: Text('On Call',
                    style: TextStyle(
                      color: white,
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                    )),
              ),
              Text(
                'Protection',
                style: TextStyle(
                  color: white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
