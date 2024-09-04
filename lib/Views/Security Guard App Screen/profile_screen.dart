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
import 'package:security_application/Views/Security%20Guard%20App%20Screen/Premium%20Users/premium_screen.dart';
import 'package:security_application/Views/Security%20Guard%20App%20Screen/edit_profile.dart';
import 'package:security_application/Views/Security%20Guard%20App%20Screen/home_screen.dart';
import 'package:security_application/Views/Security%20Guard%20App%20Screen/notifications_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
                      onPressed: () async {
                        if (index == 1) {
                          navPush(context, const EditProfile());
                        } else if (index == 3) {
                          navPush(context, const PremiumScreen());
                        } else if (index == 5) {
                          bool? confirmed = await showDialog<bool>(
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
                                  onPressed: () =>
                                      Navigator.pop(context, false),
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
                            sp.remove('User');
                            sp.remove('Security');

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
                          // final SharedPreferences sp =
                          //     await SharedPreferences.getInstance();
                          // showDialog(
                          //   // ignore: use_build_context_synchronously
                          //   context: context,
                          //   builder: (context) {
                          //     return AlertDialog(
                          //       title: Row(
                          //         children: [
                          //           const Icon(Icons.warning_amber),
                          //           SizedBox(
                          //             width: 5.w,
                          //           ),
                          //           Text(
                          //             'Logout?',
                          //             style: GoogleFonts.poppins(
                          //                 fontSize: 14.sp,
                          //                 color: appcolor,
                          //                 fontWeight: FontWeight.bold),
                          //           ),
                          //         ],
                          //       ),
                          //       content: Text(
                          //         'Do you really want to logout?',
                          //         style: GoogleFonts.poppins(
                          //             fontSize: 12.sp, color: requestColor),
                          //       ),
                          //       actions: [
                          //         TextButton(
                          //           onPressed: () {
                          //             Navigator.pop(context);
                          //           },
                          //           child: Text(
                          //             'Cancel',
                          //             style: GoogleFonts.poppins(
                          //                 fontSize: 10.sp,
                          //                 fontWeight: FontWeight.w700,
                          //                 color: appcolor),
                          //           ),
                          //         ),
                          //         TextButton(
                          //           onPressed: () async {
                          //             await FirebaseAuth.instance.signOut();

                          //             await sp.remove('isLogin');
                          //             await sp.remove('User');
                          //             await sp.remove('Security');

                          //             // ignore: use_build_context_synchronously
                          //             Navigator.pop(context);

                          //             Navigator.pushAndRemoveUntil(
                          //               // ignore: use_build_context_synchronously
                          //               context,
                          //               MaterialPageRoute(
                          //                 builder: (context) =>
                          //                     const LoginScreen(),
                          //               ),
                          //               (Route<dynamic> route) => false,
                          //             );
                          //           },
                          //           child: Text(
                          //             'Ok',
                          //             style: GoogleFonts.poppins(
                          //                 fontSize: 10.sp,
                          //                 fontWeight: FontWeight.w700,
                          //                 color: appcolor),
                          //           ),
                          //         ),
                          //       ],
                          //     );
                          //   },
                          // );
                        }
                      }),
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
            currentIndex: _selectedIndex,
            onTap: (value) {
              if (value == 0) {
                navPush(context, const SecurityHomeScreen());
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
