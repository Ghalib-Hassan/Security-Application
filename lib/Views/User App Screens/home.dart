import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/bottom_nav_clipper_shape.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Utils/colors.dart';
import 'package:security_application/Utils/nav_push.dart';
import 'package:security_application/Views/User%20App%20Screens/favourite_guard.dart';
import 'package:security_application/Views/User%20App%20Screens/guard_profile.dart';
import 'package:security_application/Views/User%20App%20Screens/notification_screen.dart';
import 'package:security_application/Views/User%20App%20Screens/profile.dart';
import '../../Custom Widgets/favourite_icon.dart';
import '../../Custom Widgets/search_field.dart';
import '../../Custom Widgets/user_appbar1.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({super.key});

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  List guardImages = [
    'Images/Guard1.png',
    'Images/Guard2.png',
    'Images/Guard3.png',
    'Images/Guard4.png',
  ];
  List guardDistance = ['1.5 Km away', '8 Km away', '10 Km away', '14 Km away'];
  List guardNames = [
    'Jaxson Kors',
    'Justin Rhiel ',
    'Jaxson Bergson',
    'Randy Vac'
  ];
  final selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const UserAppbar1(),
          SizedBox(
            height: 10.h,
          ),
          SearchField(text: 'Search by name'),
          Expanded(
            child: ListView.builder(
                itemCount: guardImages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      height: 90.h,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(1),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: .2, color: const Color(0xFFCAC4C4)),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 5,
                                color: black,
                                offset: Offset(1, 3))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                guardImages[index],
                                height: 100.h,
                                width: 60.w,
                                alignment: Alignment.topCenter,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      guardDistance[index],
                                      style: GoogleFonts.poppins(
                                          fontSize: 12.sp,
                                          color: const Color(0xff717171)),
                                    ),
                                    SizedBox(
                                      width: 80.w,
                                    ),
                                    const FavIcon(),
                                  ],
                                ),
                                Text(
                                  guardNames[index],
                                  style: GoogleFonts.poppins(
                                      color: black,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '\$15/day',
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xff717171),
                                    fontSize: 9.sp,
                                  ),
                                ),
                                Row(
                                  children: [
                                    AnimatedRatingStars(
                                      initialRating: 3.5,
                                      minRating: 0.0,
                                      maxRating: 5.0,
                                      filledColor: Colors.amber,
                                      emptyColor: Colors.grey,
                                      filledIcon: Icons.star,
                                      halfFilledIcon: Icons.star_half,
                                      emptyIcon: Icons.star_border,
                                      onChanged: (double rating) {
                                        // Handle the rating change here
                                        // ignore: avoid_print
                                        print('Rating: $rating');
                                      },
                                      displayRatingValue: true,
                                      interactiveTooltips: true,
                                      customFilledIcon: Icons.star,
                                      customHalfFilledIcon: Icons.star_half,
                                      customEmptyIcon: Icons.star_border,
                                      starSize: 10,
                                      animationDuration:
                                          const Duration(milliseconds: 300),
                                      animationCurve: Curves.easeInOut,
                                      readOnly: false,
                                    ),
                                    SizedBox(
                                      width: 40.w,
                                    ),
                                    CustomButton(
                                        buttonWidth: 70.w,
                                        buttonHeight: 20.h,
                                        buttonText: 'Hire Now',
                                        buttonFontSize: 8.sp,
                                        buttonFontWeight: FontWeight.normal,
                                        buttonRadius: 20,
                                        onPressed: () {
                                          navPush(context,
                                              const UserSecurityGuardProfile());
                                        })
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
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
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            onTap: (value) {
              if (value == 0) {
                // navPush(context, const UserHomeScreen());
              } else if (value == 1) {
                navPush(context, const UserNotificationScreen());
              } else if (value == 2) {
                navPush(context, const UserFavourite());
              } else if (value == 3) {
                navPush(context, const UserProfileScreen());
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
                  Icons.bookmark,
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
