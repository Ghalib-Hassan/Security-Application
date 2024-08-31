import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Utils/colors.dart';
import 'package:security_application/Utils/nav_pus.dart';
import 'package:security_application/Views/Security%20Guard%20App%20Screen/home_screen.dart';
import 'package:security_application/Views/Security%20Guard%20App%20Screen/profile_screen.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final int _selectedIndex = 1;

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
                            backgroundImage: const NetworkImage(
                                'https://s3-alpha-sig.figma.com/img/a4e9/e1a3/ceccba680ab397807f9579b2daed2f9c?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=kdLmenta~9tE7tllaiTRYX-6nTN5b6I7G~ecZQUpqaJ8Qmquzrhamn~hCbHxbMwapkELWtGnmrehcYegIkqLO7dPkNy3Ptawhi-2gwGIkU00u0vDrNDLvtI0gFRaqkKrr-lEZPy-NMabIrSfzVVXNaTseUuEEomzISxwggjt~YlrT5n4dNGwW50nGLI93lYJET1RUq0TXl0uEo8sZw5m65b6sfGEd1YFPIb5eyVaFKPj8a5AvWcUn4ZeJlJNY5ur6n-TQUo4GMTB8U8aaBRlo3vS~lcvcmVedmPBdh1xZR6L91QQVnbiAuu6yDnqHRIO1OlfXoaoC1xDfkfWDi~cEA__'),
                          ),
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
                                TextSpan(text: 'wants to hire you for 8h')
                              ])),
                          subtitle: Text('2h ago',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff95A0AE))),
                          trailing: CustomButton(
                              buttonWidth: 60.w,
                              buttonHeight: 20.h,
                              buttonFontSize: 10.sp,
                              buttonText: 'Accept',
                              onPressed: () {}),
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
                            backgroundImage: const NetworkImage(
                                'https://s3-alpha-sig.figma.com/img/a4e9/e1a3/ceccba680ab397807f9579b2daed2f9c?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=kdLmenta~9tE7tllaiTRYX-6nTN5b6I7G~ecZQUpqaJ8Qmquzrhamn~hCbHxbMwapkELWtGnmrehcYegIkqLO7dPkNy3Ptawhi-2gwGIkU00u0vDrNDLvtI0gFRaqkKrr-lEZPy-NMabIrSfzVVXNaTseUuEEomzISxwggjt~YlrT5n4dNGwW50nGLI93lYJET1RUq0TXl0uEo8sZw5m65b6sfGEd1YFPIb5eyVaFKPj8a5AvWcUn4ZeJlJNY5ur6n-TQUo4GMTB8U8aaBRlo3vS~lcvcmVedmPBdh1xZR6L91QQVnbiAuu6yDnqHRIO1OlfXoaoC1xDfkfWDi~cEA__'),
                          ),
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
                                TextSpan(text: 'wants to hire you for 8h')
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
          clipper: CustomClipperShape(),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (value) {
              if (value == 0) {
                navPush(context, const HomeScreen());
              } else if (value == 1) {
                // navPush(context, const Notifications());
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
