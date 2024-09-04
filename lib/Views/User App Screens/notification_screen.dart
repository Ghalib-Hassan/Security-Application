import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/bottom_nav_clipper_shape.dart';
import 'package:security_application/Utils/colors.dart';
import 'package:security_application/Utils/nav_push.dart';
import 'package:security_application/Views/User%20App%20Screens/favourite_guard.dart';
import 'package:security_application/Views/User%20App%20Screens/home.dart';
import 'package:security_application/Views/User%20App%20Screens/profile.dart';

class UserNotificationScreen extends StatefulWidget {
  const UserNotificationScreen({super.key});

  @override
  State<UserNotificationScreen> createState() => _UserNotificationScreenState();
}

class _UserNotificationScreenState extends State<UserNotificationScreen> {
  final int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Notification',
                style: poppinsBold,
              ),
              RichText(
                text: TextSpan(
                    style: GoogleFonts.poppins(color: const Color(0xFF95A0AE)),
                    children: const [
                      TextSpan(text: 'You have '),
                      TextSpan(
                          text: '3 Notifications ',
                          style: TextStyle(
                              color: Color(0xFF023982),
                              fontWeight: FontWeight.w500)),
                      TextSpan(text: 'You have '),
                    ]),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Today',
                style: poppinsMedium,
              ),
              SizedBox(
                height: 5.h,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 2),
                          leading: CircleAvatar(
                              radius: 20.r,
                              backgroundImage: const AssetImage(
                                  'Images/NotificationProfile.png')),
                          title: RichText(
                              text: TextSpan(
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff95A0AE)),
                                  children: const [
                                TextSpan(
                                  text: 'Robert ',
                                  style: TextStyle(
                                    color: Color(0xff023982),
                                  ),
                                ),
                                TextSpan(text: 'accepted your job request.')
                              ])),
                          subtitle: Text('2h ago',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff95A0AE))),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'This Week',
                style: poppinsMedium,
              ),
              SizedBox(
                height: 5.h,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 2),
                          leading: CircleAvatar(
                              radius: 20.r,
                              backgroundImage: const AssetImage(
                                  'Images/NotificationProfile.png')),
                          title: RichText(
                              text: TextSpan(
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff95A0AE)),
                                  children: const [
                                TextSpan(
                                  text: 'Robert ',
                                  style: TextStyle(
                                    color: Color(0xff023982),
                                  ),
                                ),
                                TextSpan(text: 'accepted your job request.')
                              ])),
                          subtitle: Text('2h ago',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff95A0AE))),
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
                // navPush(context, const UserNotificationScreen());
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