import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_application/Utils/colors.dart';
import 'package:security_application/Utils/nav_push.dart';

class MyAppBarTwo extends StatefulWidget {
  final Widget? page;
  const MyAppBarTwo({super.key, this.page});

  @override
  State<MyAppBarTwo> createState() => _MyAppBarTwoState();
}

class _MyAppBarTwoState extends State<MyAppBarTwo> {
  @override
  Widget build(BuildContext context) {
    final double containerWidth = MediaQuery.of(context).size.width;
    final double avatarRadius = 40.r;
    final double avatarDiameter = avatarRadius * 2;

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
                      backgroundImage: const AssetImage('Images/profile.png')),
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
