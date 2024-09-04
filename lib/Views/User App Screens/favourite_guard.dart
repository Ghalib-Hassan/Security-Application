import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/bottom_nav_clipper_shape.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Custom%20Widgets/favourite_icon.dart';
import 'package:security_application/Custom%20Widgets/search_field.dart';
import 'package:security_application/Utils/colors.dart';
import 'package:security_application/Utils/nav_push.dart';
import 'package:security_application/Views/User%20App%20Screens/home.dart';
import 'package:security_application/Views/User%20App%20Screens/notification_screen.dart';
import 'package:security_application/Views/User%20App%20Screens/profile.dart';

class UserFavourite extends StatefulWidget {
  const UserFavourite({super.key});

  @override
  State<UserFavourite> createState() => _UserFavouriteState();
}

class _UserFavouriteState extends State<UserFavourite> {
  List guardImages = [
    'Images/Guard1.png',
    'Images/Guard2.png',
    'Images/Guard3.png',
    'Images/Guard4.png',
  ];
  List guardNames = [
    'Jaxson Kors',
    'Justin Rhiel ',
    'Jaxson Bergson',
    'Randy Vac'
  ];
  final selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 13.0, top: 10, right: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 110, top: 30),
                child: Text(
                  'My favourites',
                  style: poppinsBold,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SearchField(text: 'Search by name'),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: guardImages.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Container(
                              height: 100.h,
                              width: 240.w,
                              decoration: BoxDecoration(
                                  color: white.withOpacity(1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        width: 80.w,
                                        height: 80.h,
                                        guardImages[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              ' 15 Km away',
                                              style: GoogleFonts.poppins(
                                                  color: requestColor,
                                                  fontSize: 10.sp),
                                            ),
                                            SizedBox(
                                              width: 70.w,
                                            ),
                                            const FavIcon()
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 90),
                                          child: Text(
                                            guardNames[index],
                                            style: GoogleFonts.poppins(
                                                color: black,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 110),
                                          child: Text(
                                            '~\$15/day',
                                            style: GoogleFonts.poppins(
                                                color: requestColor,
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400),
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
                                                print('Rating: $rating');
                                              },
                                              displayRatingValue: true,
                                              interactiveTooltips: true,
                                              customFilledIcon: Icons.star,
                                              customHalfFilledIcon:
                                                  Icons.star_half,
                                              customEmptyIcon:
                                                  Icons.star_border,
                                              starSize: 10,
                                              animationDuration: const Duration(
                                                  milliseconds: 300),
                                              animationCurve: Curves.easeInOut,
                                              readOnly: false,
                                            ),
                                            SizedBox(
                                              width: 25.w,
                                            ),
                                            CustomButton(
                                                buttonWidth: 60.w,
                                                buttonColor: Colors.white,
                                                textColor: appcolor,
                                                buttonFontSize: 10.sp,
                                                buttonFontWeight:
                                                    FontWeight.normal,
                                                buttonHeight: 30.h,
                                                buttonText: 'Remove',
                                                onPressed: () {}),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
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
                navPush(context, const UserHomeScreen());
              } else if (value == 1) {
                navPush(context, const UserNotificationScreen());
              } else if (value == 2) {
                // navPush(context, const UserFavourite());
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
