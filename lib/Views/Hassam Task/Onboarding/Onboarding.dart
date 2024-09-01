import 'package:flutter/material.dart';
import 'package:security_app/authScreen/welcom.dart';
import 'package:security_app/constants/button.dart';
import 'package:security_app/constants/colors.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image:DecorationImage(fit: BoxFit.cover,image: AssetImage('asset/security.png'))),
          child: 
         Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 100,left: 30),
                child: Row(
                  children: [
                    Text('Make your \nand \nothers \nlife secure.',style: TextStyle(color:white,fontWeight: FontWeight.bold,fontSize: 24),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Mybutton(onPressed:() {
                  // print('i pressed');
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const WelcomScreen()));
                }, style:TextButton.styleFrom(
                  textStyle:const TextStyle(color: Darkblue)
                ), text:'Get started', height:50, width: 200, color:white),
              )
            ],
          ),
        );
  }
}