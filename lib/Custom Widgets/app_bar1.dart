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
                    backgroundImage: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/6512/7b3f/2a9a4d53051431ce2a8b538cf40d5ab2?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ldscg5E6rmI-9SOhOtn8oTsrJBybqACFNycANbQ3LvJGGdOa5XBRQsXU~GpcUJI9gNF6CAuqAcIQNhyQMngac0bfya4NvlIcpA22zQDp79HCda3bZeL1VT31BWZQsnHa6jyuLMHgPP84LaoKKSIxHHF0fWKIxSEtgR~mQ4I0tgNUBLJaOKI3RleS113UR~X6dsJD9CCtDKaCQSwZM7BDkhDC5JzetRc3kZ6CgWpCRffhvlHLwtMwk6ywc1FC49juUtAzUOeHCTHeYEciaR5CIUYBQoOuiyO8p2dLrTqlPQ5hciNqwFR8X47FPIi-vRyEvQvMR4qNO0qQl79OoUVV5g__'),
                  ),
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
