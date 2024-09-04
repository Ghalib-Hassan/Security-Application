import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Utils/colors.dart';
import 'package:security_application/Utils/nav_push.dart';
import 'package:security_application/Views/User%20App%20Screens/pay_guard.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class UserHiringDone extends StatefulWidget {
  const UserHiringDone({super.key});

  @override
  State<UserHiringDone> createState() => _UserHiringDoneState();
}

class _UserHiringDoneState extends State<UserHiringDone> {
  double _currentRating = 5.0;
  double _value = 40.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Stack(
        children: [
          Container(
              height: 160.h,
              width: double.infinity,
              decoration:
                  const BoxDecoration(borderRadius: BorderRadius.only()),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
                child: Image.asset(
                  'Images/johnguard.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              )),
          Positioned(
            top: 50,
            left: 30,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'John Robert',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 18.sp),
            ),
            RichText(
                text: TextSpan(
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: black,
                        fontSize: 12.sp),
                    children: [
                  const TextSpan(text: '\$15 '),
                  TextSpan(
                      text: '(per hour)',
                      style: TextStyle(
                          color: requestColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 8.sp))
                ])),
          ])),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              _currentRating.toStringAsFixed(1),
              style: TextStyle(
                color: requestColor,
                fontSize: 13.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            AnimatedRatingStars(
              starSize: 10.sp,
              initialRating: _currentRating,
              minRating: 0,
              customFilledIcon: Icons.star,
              customHalfFilledIcon: Icons.star_half,
              customEmptyIcon: Icons.star_border,
              onChanged: (rating) {
                setState(() {
                  _currentRating = rating;
                });
              },
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
        child: Row(
          children: [
            Text(
              'View all details',
              style: GoogleFonts.poppins(
                color: appcolor,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 13),
        child: Wrap(
          children: [
            RichText(
                text: TextSpan(
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: requestColor,
                        fontSize: 13.sp),
                    children: [
                  const TextSpan(text: 'You have hired '),
                  TextSpan(
                      text: 'John Robert for 18 hours. ',
                      style: GoogleFonts.poppins(
                          color: black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp))
                ])),
          ],
        ),
      ),
      FittedBox(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          child: SizedBox(
            width: 150.w,
            child: SfSlider(
              min: 0,
              max: 24,
              value: _value,
              inactiveColor: black.withOpacity(.4),
              activeColor: appcolor,
              interval: 6,
              showTicks: true,
              showLabels: true,
              enableTooltip: true,
              shouldAlwaysShowTooltip: false,
              stepSize: 1,
              minorTicksPerInterval: 0,
              onChanged: (dynamic value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ),
        ),
      ),
      SizedBox(
        height: 30.h,
      ),
      Container(
          height: 70.h,
          width: 250.w,
          decoration: BoxDecoration(
              color: const Color(0x00e8e8ed).withOpacity(1),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'From',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp),
                    ),
                    Container(
                      height: 40.h,
                      width: 115.w,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          '15-07-2022',
                          style: GoogleFonts.poppins(
                              color: requestColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'To',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp),
                    ),
                    Container(
                      height: 40.h,
                      width: 115.w,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          '17-07-2022',
                          style: GoogleFonts.poppins(
                              color: requestColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
      SizedBox(
        height: 50.h,
      ),
      CustomButton(
          buttonWidth: 190.w,
          buttonHeight: 40.h,
          buttonFontWeight: FontWeight.w600,
          buttonText: 'Done Job and Pay Now',
          onPressed: () {
            navPush(context, const UserPayForSecurity());
          })
    ]));
  }
}
