import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/app_bar2.dart';
import 'package:security_application/Custom%20Widgets/bottom_nav_clipper_shape.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Utils/colors.dart';
import 'package:security_application/Utils/nav_push.dart';
import 'package:security_application/Views/Auth_Screen/login_page.dart';
import 'package:security_application/Views/User%20App%20Screens/edit_profile.dart';
import 'package:security_application/Views/User%20App%20Screens/favourite_guard.dart';
import 'package:security_application/Views/User%20App%20Screens/hired_guard.dart';
import 'package:security_application/Views/User%20App%20Screens/home.dart';
import 'package:security_application/Views/User%20App%20Screens/notification_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  List iconsList = [
    Icons.person,
    FontAwesomeIcons.userSecret,
    FontAwesomeIcons.lock,
    Icons.logout,
  ];
  List profileList = [
    'Profile Setting',
    'Hired Security Gaurds',
    'Update Password',
    'Log out',
  ];
  final selectedIndex = 3;
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MyAppBarTwo(
            page: UserEditProfile(),
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            'Williamson R.',
            style: poppinsBold,
          ),
          Text(
            'Wjohn@gmail.com',
            style: GoogleFonts.poppins(
                color: requestColor, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomButton(
              buttonWidth: 90.w,
              buttonHeight: 30.h,
              buttonRadius: 20,
              buttonText: 'Edit Profile',
              onPressed: () {
                navPush(context, const UserEditProfile());
              }),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            color: requestColor,
          ),
          SizedBox(
            height: 5.h,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: iconsList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    width: 25.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color(0xffDCEAFD),
                    ),
                    child: Icon(
                      iconsList[index],
                      color: const Color(0xFF022C63),
                    ),
                  ),
                  title: Text(
                    profileList[index],
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF022C63),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios_sharp,
                        color: Color(0xff95A0AE)),
                    onPressed: () async {
                      if (index == 0) {
                        navPush(context, const UserEditProfile());
                      } else if (index == 1) {
                        navPush(context, const UserHiredSecurity());
                      } else if (index == 3) {
                        final bool? confirmed = await showDialog<bool>(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Row(
                              children: [
                                const FaIcon(FontAwesomeIcons.faceSadTear),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  'Logout?',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      color: appcolor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            content: Text(
                              'Do you really want to logout?',
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp, color: requestColor),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, false),
                                child: Text('Cancel',
                                    style: GoogleFonts.poppins(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w700,
                                        color: appcolor)),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, true),
                                child: Text('Logout',
                                    style: GoogleFonts.poppins(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w700,
                                        color: appcolor)),
                              ),
                            ],
                          ),
                        );

                        if (confirmed == true) {
                          final SharedPreferences sp =
                              await SharedPreferences.getInstance();
                          await FirebaseAuth.instance.signOut();

                          sp.remove('isLogin');
                          // sp.remove('User');
                          // sp.remove('Security');

                          Fluttertoast.showToast(
                            msg: "Logged out successfully",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );

                          Navigator.pushAndRemoveUntil(
                            // ignore: use_build_context_synchronously
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                            (Route<dynamic> route) => false,
                          );
                        }
                      }
                    },
                  ),
                );
              },
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
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            onTap: (value) {
              if (value == 0) {
                navPush(context, const UserHomeScreen());
              } else if (value == 1) {
                navPush(context, const UserNotificationScreen());
              } else if (value == 2) {
                navPush(context, const UserFavourite());
              } else if (value == 3) {
                // navPush(context, const UserProfileScreen());
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
