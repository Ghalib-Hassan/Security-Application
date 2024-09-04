import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Utils/colors.dart';
import 'package:security_application/Utils/nav_push.dart';
import 'package:security_application/Views/User%20App%20Screens/hiring_done.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class UserBookingGuard extends StatefulWidget {
  const UserBookingGuard({super.key});

  @override
  State<UserBookingGuard> createState() => _UserBookingGuardState();
}

class _UserBookingGuardState extends State<UserBookingGuard> {
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
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 50.h,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Text(
                _currentRating.toStringAsFixed(1),
                style: TextStyle(
                  color: requestColor,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
      Padding(
        padding: const EdgeInsets.only(left: 13),
        child: Row(
          children: [
            RichText(
                text: TextSpan(
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: requestColor,
                        fontSize: 10.sp),
                    children: [
                  const TextSpan(
                      text: 'For how many hours per day you \nwant to hire '),
                  TextSpan(
                      text: 'John Robert? ',
                      style: GoogleFonts.poppins(
                          color: black,
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp))
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
                          '2-10-2022',
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
                          '2-10-2022',
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
          buttonText: 'Hire Now for \$0',
          onPressed: () {
            navPush(context, const UserHiringDone());
          })
    ]));
  }
}
