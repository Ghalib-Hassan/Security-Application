import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/app_bar1.dart';
import 'package:security_application/Custom%20Widgets/bottom_nav_clipper_shape.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Custom%20Widgets/search_field.dart';
import 'package:security_application/Utils/colors.dart';
import 'package:security_application/Utils/nav_push.dart';
import 'package:security_application/Views/Security%20Guard%20App%20Screen/notifications_screen.dart';
import 'package:security_application/Views/Security%20Guard%20App%20Screen/profile_screen.dart';
import 'package:security_application/Views/Security%20Guard%20App%20Screen/request_screen.dart';

class SecurityHomeScreen extends StatefulWidget {
  const SecurityHomeScreen({super.key});

  @override
  State<SecurityHomeScreen> createState() => _SecurityHomeScreenState();
}

class _SecurityHomeScreenState extends State<SecurityHomeScreen> {
  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MyAppBarOne(),
          SizedBox(
            height: 10.h,
          ),
          SearchField(text: 'Search by name'),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'People looking for security guards',
            style: GoogleFonts.poppins(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 240.w,
            height: 80.h,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: .2, color: const Color(0xFFCAC4C4))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'Images/UserSecurity.png',
                        height: 80.h,
                        width: 50.w,
                        alignment: Alignment.topCenter,
                        fit: BoxFit.fitWidth,
                      )),
                  SizedBox(
                    width: 8.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '15 Km away',
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Text(
                        'John Robert',
                        style: GoogleFonts.poppins(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar(
                            filledIcon: Icons.star,
                            emptyIcon: Icons.star_border,
                            size: 17,
                            onRatingChanged: (value) => debugPrint('$value'),
                            initialRating: 3,
                            maxRating: 5,
                          ),
                          CustomButton(
                              buttonWidth: 70.w,
                              buttonHeight: 20.h,
                              buttonText: 'Wants to hire you',
                              buttonFontSize: 8.sp,
                              buttonFontWeight: FontWeight.normal,
                              buttonRadius: 20,
                              onPressed: () {
                                navPush(context, const RequestScreen());
                              })
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            width: 240.w,
            height: 80.h,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: .2, color: const Color(0xFFCAC4C4))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'Images/UserSecurity.png',
                        height: 80.h,
                        width: 50.w,
                        alignment: Alignment.topCenter,
                        fit: BoxFit.fitWidth,
                      )),
                  SizedBox(
                    width: 8.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '15 Km away',
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Text(
                        'John Robert',
                        style: GoogleFonts.poppins(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar(
                            filledIcon: Icons.star,
                            emptyIcon: Icons.star_border,
                            size: 17,
                            onRatingChanged: (value) => debugPrint('$value'),
                            initialRating: 3,
                            maxRating: 5,
                          ),
                          CustomButton(
                              buttonWidth: 70.w,
                              buttonHeight: 20.h,
                              buttonText: 'Wants to hire you',
                              buttonFontSize: 8.sp,
                              buttonFontWeight: FontWeight.normal,
                              buttonRadius: 20,
                              onPressed: () {
                                navPush(context, const RequestScreen());
                              })
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 60.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: ClipPath(
          clipper: GeneralCustomClipperShape(),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (value) {
              if (value == 0) {
                // navPush(context, const HomeScreen());
              } else if (value == 1) {
                navPush(context, const Notifications());
              } else if (value == 2) {
                navPush(context, const ProfileScreen());
              }
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 40,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  size: 40,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 40,
                ),
                label: '',
              ),
            ],
            selectedItemColor: appcolor,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
