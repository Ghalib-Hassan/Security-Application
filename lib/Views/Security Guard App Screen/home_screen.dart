import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/app_bar1.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Custom%20Widgets/search_field.dart';
import 'package:security_application/Utils/colors.dart';
import 'package:security_application/Utils/nav_pus.dart';
import 'package:security_application/Views/Security%20Guard%20App%20Screen/notifications_screen.dart';
import 'package:security_application/Views/Security%20Guard%20App%20Screen/profile_screen.dart';
import 'package:security_application/Views/Security%20Guard%20App%20Screen/request_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            width: 195.w,
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
                    child: Image.network(
                      height: 80.h,
                      width: 50.w,
                      alignment: Alignment.topCenter,
                      'https://s3-alpha-sig.figma.com/img/55b5/4abb/a3bc778cd83660ee1d8b9995f21e0cb5?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Xs9DLB4L~oQjPFSLHrVdJ2L4GQCYoJJhFsmz1HtQ0L0Fl3JeYeQCYYPbVY7xbEspSY0LMVAkXGy6uJCVFniRMazyGEUZmq3-OrrLZVaA7uURmln6ey4JpQwsIKDJLKZJ0bnozHqdXsL57CcNXUUi62zV7VuPrsB0keCMQzpnnFe82UCEuT2jHYnSsrD6SariiTv5Thc3kQWsXxdy1FF9KmPUqhjqrNG7DRd-crTEbIBd~Uk~4PFDbCQ6VOVsKFxcjut17E8iDLbLxgOpdFvKN0lgwkLdQWDmXdeEbgTlQdBBmvElusOVtnKsdIB9GxFbmZTP0ITXFW5AL5IpynCFYQ__',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
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
            width: 195.w,
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
                    child: Image.network(
                      height: 80.h,
                      width: 50.w,
                      alignment: Alignment.topCenter,
                      'https://s3-alpha-sig.figma.com/img/55b5/4abb/a3bc778cd83660ee1d8b9995f21e0cb5?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Xs9DLB4L~oQjPFSLHrVdJ2L4GQCYoJJhFsmz1HtQ0L0Fl3JeYeQCYYPbVY7xbEspSY0LMVAkXGy6uJCVFniRMazyGEUZmq3-OrrLZVaA7uURmln6ey4JpQwsIKDJLKZJ0bnozHqdXsL57CcNXUUi62zV7VuPrsB0keCMQzpnnFe82UCEuT2jHYnSsrD6SariiTv5Thc3kQWsXxdy1FF9KmPUqhjqrNG7DRd-crTEbIBd~Uk~4PFDbCQ6VOVsKFxcjut17E8iDLbLxgOpdFvKN0lgwkLdQWDmXdeEbgTlQdBBmvElusOVtnKsdIB9GxFbmZTP0ITXFW5AL5IpynCFYQ__',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
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
          clipper: CustomClipperShape(),
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

class CustomClipperShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 25.0;
    Path path = Path()
      ..moveTo(0, radius)
      ..quadraticBezierTo(0, 0, radius, 0)
      ..lineTo(size.width - radius, 0)
      ..quadraticBezierTo(size.width, 0, size.width, radius)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
