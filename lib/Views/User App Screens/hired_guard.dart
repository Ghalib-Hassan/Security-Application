import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Custom%20Widgets/favourite_icon.dart';
import 'package:security_application/Custom%20Widgets/search_field.dart';
import 'package:security_application/Utils/colors.dart';

class UserHiredSecurity extends StatefulWidget {
  const UserHiredSecurity({super.key});

  @override
  State<UserHiredSecurity> createState() => _UserHiredSecurityState();
}

class _UserHiredSecurityState extends State<UserHiredSecurity> {
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
  List guardAvailability = ['In Progress', 'Done', 'Done', 'Done'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hired Security Guards',
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color(0xff707A89)),
      ),
      body: Column(
        children: [
          SearchField(text: 'Search by name'),
          SizedBox(
            height: 10.h,
          ),
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
                                    if (index == 0)
                                      CustomButton(
                                          buttonWidth: 70.w,
                                          buttonHeight: 20.h,
                                          buttonText: guardAvailability[index],
                                          buttonFontSize: 8.sp,
                                          buttonFontWeight: FontWeight.normal,
                                          buttonRadius: 20,
                                          onPressed: () {}),
                                    if (index == 1 || index == 2 || index == 3)
                                      CustomButton(
                                          buttonColor: Colors.white,
                                          textColor: appcolor,
                                          buttonWidth: 70.w,
                                          buttonHeight: 20.h,
                                          buttonText: guardAvailability[index],
                                          buttonFontSize: 8.sp,
                                          buttonFontWeight: FontWeight.normal,
                                          buttonRadius: 20,
                                          onPressed: () {}),
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
    );
  }
}
