import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/app_bar2.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Utils/colors.dart';
import 'package:security_application/Utils/nav_pus.dart';
import 'package:security_application/Views/Security%20Guard%20App%20Screen/Premium%20Users/premium_screen.dart';
import 'package:security_application/Views/Security%20Guard%20App%20Screen/edit_profile.dart';
import 'package:security_application/Views/Security%20Guard%20App%20Screen/home_screen.dart';
import 'package:security_application/Views/Security%20Guard%20App%20Screen/notifications_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final int _selectedIndex = 2;
  bool switchValue = false;
  List iconsList = [
    Icons.align_vertical_bottom,
    Icons.person,
    Icons.notifications,
    Icons.add_card,
    Icons.lock,
    Icons.logout,
  ];
  List profileList = [
    'Show Availibility',
    'My profile',
    'Notifications',
    'Add card',
    'Update Password',
    'Log out'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MyAppBarTwo(
            page: EditProfile(),
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
          RichText(
              text: TextSpan(
                  style: GoogleFonts.poppins(
                      color: requestColor, fontWeight: FontWeight.w400),
                  children: const [
                TextSpan(
                    text: '\$15',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan(text: ' (Per hour)'),
              ])),
          SizedBox(
            height: 15.h,
          ),
          CustomButton(
              buttonWidth: 90.w,
              buttonHeight: 30.h,
              buttonRadius: 20,
              buttonText: 'Edit Profile',
              onPressed: () {
                navPush(context, const EditProfile());
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
                if (index == 0) {
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
                        color: const Color(0xff011023),
                      ),
                    ),
                    title: Text(
                      profileList[index],
                      style: GoogleFonts.poppins(
                        color: const Color(0xff011023),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Switch(
                      activeColor: const Color(0xFF022C63),
                      activeTrackColor: const Color(0xFF022C63),
                      thumbColor:
                          const WidgetStatePropertyAll(Color(0x00ffffff)),
                      inactiveTrackColor: const Color(0xff95A0AE),
                      trackOutlineColor:
                          const WidgetStatePropertyAll(Color(0x00ffffff)),
                      value: switchValue,
                      onChanged: (value) {
                        setState(() {
                          switchValue = value;
                        });
                      },
                    ),
                  );
                }

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
                    onPressed: () {
                      if (index == 3) {
                        navPush(context, const PremiumScreen());
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
          clipper: CustomClipperShape(),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (value) {
              if (value == 0) {
                navPush(context, const HomeScreen());
              } else if (value == 1) {
                navPush(context, const Notifications());
              } else if (value == 2) {
                // navPush(context, const ProfileScreen());
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
