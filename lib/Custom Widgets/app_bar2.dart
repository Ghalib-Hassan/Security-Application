import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_application/Utils/colors.dart';
import 'package:security_application/Utils/nav_pus.dart';

class MyAppBarTwo extends StatefulWidget {
  final Widget? page;
  const MyAppBarTwo({super.key, this.page});

  @override
  State<MyAppBarTwo> createState() => _MyAppBarTwoState();
}

class _MyAppBarTwoState extends State<MyAppBarTwo> {
  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width;
    double avatarRadius = 40.r;
    double avatarDiameter = avatarRadius * 2;

    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 140.h,
          decoration: BoxDecoration(
            color: appcolor,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 95,
                left: (containerWidth - avatarDiameter) / 2.05,
                child: CircleAvatar(
                  backgroundColor: appcolor,
                  radius: 45.r,
                  child: CircleAvatar(
                    radius: avatarRadius,
                    backgroundImage: const NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/6512/7b3f/2a9a4d53051431ce2a8b538cf40d5ab2?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ldscg5E6rmI-9SOhOtn8oTsrJBybqACFNycANbQ3LvJGGdOa5XBRQsXU~GpcUJI9gNF6CAuqAcIQNhyQMngac0bfya4NvlIcpA22zQDp79HCda3bZeL1VT31BWZQsnHa6jyuLMHgPP84LaoKKSIxHHF0fWKIxSEtgR~mQ4I0tgNUBLJaOKI3RleS113UR~X6dsJD9CCtDKaCQSwZM7BDkhDC5JzetRc3kZ6CgWpCRffhvlHLwtMwk6ywc1FC49juUtAzUOeHCTHeYEciaR5CIUYBQoOuiyO8p2dLrTqlPQ5hciNqwFR8X47FPIi-vRyEvQvMR4qNO0qQl79OoUVV5g__'),
                  ),
                ),
              ),
              Positioned(
                top: 160,
                left: (containerWidth - avatarDiameter) / 1.3,
                child: Container(
                  width: 25.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: appcolor,
                  ),
                  child: IconButton(
                    onPressed: () {
                      if (widget.page != null) {
                        navPush(context, widget.page!);
                      }
                      print(widget.page);
                    },
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
