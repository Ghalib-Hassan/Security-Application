import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Utils/colors.dart';

class MyAppBarOne extends StatelessWidget {
  const MyAppBarOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 120.h,
          decoration: BoxDecoration(
              color: appcolor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('Images/profile.png')),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Williamson',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp),
                      ),
                      Text(
                        'London, UK',
                        style: GoogleFonts.poppins(
                            color: Colors.white60, fontSize: 10.sp),
                      ),
                    ],
                  )
                ],
              ),
              const FaIcon(
                FontAwesomeIcons.paperPlane,
                color: Colors.white,
              )
            ],
          ),
        )
      ],
    );
  }
}
