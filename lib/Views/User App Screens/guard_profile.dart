import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Custom%20Widgets/favourite_icon.dart';
import 'package:security_application/Utils/colors.dart';
import 'package:security_application/Utils/nav_push.dart';
import 'package:security_application/Views/User%20App%20Screens/booking_guard.dart';

class UserSecurityGuardProfile extends StatefulWidget {
  const UserSecurityGuardProfile({super.key});

  @override
  State<UserSecurityGuardProfile> createState() =>
      _UserSecurityGuardProfileState();
}

class _UserSecurityGuardProfileState extends State<UserSecurityGuardProfile> {
  int selectedIndex = 1;
  bool _isExpanded = false;
  bool showAll = false;
  double _currentRating = 5.0;

  final List<String> reviews = List.generate(
      10, (index) => 'Review ${index + 1}: This is a sample review');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(children: [
              Image.asset(
                "Images/johnguard.png",
                alignment: Alignment.center,
                height: 250.h,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                top: 50,
                left: 30,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                  top: 250,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 700.h,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: SingleChildScrollView(
                              child: Column(children: [
                            if (selectedIndex == 1)
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'John Robert',
                                    style: GoogleFonts.poppins(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  const FavIcon()
                                ],
                              ),
                            if (selectedIndex == 2)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 35),
                                child: Row(
                                  children: [
                                    Text(
                                      'John Robert',
                                      style: GoogleFonts.poppins(
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Container(
                                width: 180.w,
                                height: 50.h,
                                decoration: BoxDecoration(
                                    color:
                                        const Color(0x00e8e8ed).withOpacity(1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedIndex = 1;
                                          });
                                        },
                                        child: Container(
                                          width: 80.w,
                                          height: 80.h,
                                          decoration: BoxDecoration(
                                              color: selectedIndex == 1
                                                  ? appcolor.withOpacity(1)
                                                  : Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Center(
                                            child: Text(
                                              'Profile',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14.sp,
                                                  color: selectedIndex == 1
                                                      ? Colors.white
                                                      : const Color(0x00798ba3)
                                                          .withOpacity(1)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedIndex = 2;
                                          });
                                        },
                                        child: Container(
                                          width: 80.w,
                                          height: 80.h,
                                          decoration: BoxDecoration(
                                              color: selectedIndex == 2
                                                  ? appcolor.withOpacity(1)
                                                  : Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Center(
                                            child: Text('Ratings',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14.sp,
                                                    color: selectedIndex == 2
                                                        ? Colors.white
                                                        : const Color(
                                                                0x00798ba3)
                                                            .withOpacity(1))),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            if (selectedIndex == 1)
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              color: requestColor,
                                            ),
                                            Text(
                                              'London, UK',
                                              style: poppins,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              color: requestColor,
                                            ),
                                            Text(
                                              '15 Km',
                                              style: poppins,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.height,
                                              color: requestColor,
                                            ),
                                            Text(
                                              '5 ft, 3 In',
                                              style: poppins,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 35.w,
                                        ),
                                        Row(
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.weightHanging,
                                              color: requestColor,
                                              size: 15,
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              '64 Kg',
                                              style: poppins,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0, left: 13),
                                      child: Row(
                                        children: [
                                          Text(
                                            _currentRating.toStringAsFixed(1),
                                            style: GoogleFonts.poppins(
                                              color: requestColor,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          AnimatedRatingStars(
                                            starSize: 10.sp,
                                            initialRating: _currentRating,
                                            minRating: 0,
                                            customFilledIcon: Icons.star,
                                            customHalfFilledIcon:
                                                Icons.star_half,
                                            customEmptyIcon: Icons.star_border,
                                            onChanged: (rating) {
                                              setState(() {
                                                _currentRating = rating;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 13),
                                      child: Row(
                                        children: [
                                          RichText(
                                              text: TextSpan(
                                                  style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: black,
                                                      fontSize: 12.sp),
                                                  children: [
                                                const TextSpan(text: '\$15 '),
                                                TextSpan(
                                                    text: '(per hour)',
                                                    style: TextStyle(
                                                        color: requestColor,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 8.sp))
                                              ])),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Divider(
                                        color: requestColor,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 15, right: 15),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.phone,
                                            color: requestColor,
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Text(
                                            '+1 (904) 434 4245',
                                            style: poppins,
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 15, right: 15),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.email,
                                            color: requestColor,
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Text(
                                            'john@gmail.com',
                                            style: poppins,
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40),
                                      child: CustomButton(
                                          buttonWidth: 180.w,
                                          buttonHeight: 40.h,
                                          buttonText: 'Book Now',
                                          onPressed: () {
                                            navPush(context,
                                                const UserBookingGuard());
                                          }),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: CustomButton(
                                          buttonWidth: 180.w,
                                          buttonHeight: 40.h,
                                          textColor: appcolor,
                                          buttonColor: Colors.white,
                                          buttonText: 'Call John Now',
                                          onPressed: () {}),
                                    )
                                  ],
                                ),
                              ),
                            if (selectedIndex == 2)
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 10),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Overall ratings',
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 15.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          _currentRating.toStringAsFixed(1),
                                          style: GoogleFonts.poppins(
                                            color: requestColor,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        AnimatedRatingStars(
                                          starSize: 10.sp,
                                          initialRating: _currentRating,
                                          minRating: 0,
                                          customFilledIcon: Icons.star,
                                          customHalfFilledIcon: Icons.star_half,
                                          customEmptyIcon: Icons.star_border,
                                          onChanged: (rating) {
                                            setState(() {
                                              _currentRating = rating;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                    Text(
                                      '44 customers ratings',
                                      style: GoogleFonts.poppins(
                                          color: requestColor),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 14.0, vertical: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Reviews',
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 15.sp),
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 14.0, vertical: 2),
                                          child: AnimatedRatingStars(
                                            starSize: 10.sp,
                                            initialRating: _currentRating,
                                            minRating: 0,
                                            customFilledIcon: Icons.star,
                                            customHalfFilledIcon:
                                                Icons.star_half,
                                            customEmptyIcon: Icons.star_border,
                                            onChanged: (rating) {
                                              setState(() {
                                                _currentRating = rating;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 14.0, vertical: 5),
                                      child: Text(
                                        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of ',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13.sp,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 14.0, vertical: 5),
                                      child: Row(
                                        children: [
                                          const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'Images/UserReview.png'),
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                'Albert Roben',
                                                style: GoogleFonts.poppins(
                                                    color: Colors.black),
                                              ),
                                              Text(
                                                'Sep 24, 2022',
                                                style: poppins,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _isExpanded = !_isExpanded;
                                        });
                                      },
                                      child: Text(
                                        _isExpanded ? '' : 'View All Reviews',
                                        style: GoogleFonts.poppins(
                                          color: appcolor,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                    if (_isExpanded)
                                      ListView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: 3,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 20),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 14.0,
                                                          vertical: 2),
                                                      child:
                                                          AnimatedRatingStars(
                                                        starSize: 10.sp,
                                                        initialRating:
                                                            _currentRating,
                                                        minRating: 0,
                                                        customFilledIcon:
                                                            Icons.star,
                                                        customHalfFilledIcon:
                                                            Icons.star_half,
                                                        customEmptyIcon:
                                                            Icons.star_border,
                                                        onChanged: (rating) {
                                                          setState(() {
                                                            _currentRating =
                                                                rating;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 14.0,
                                                      vertical: 5),
                                                  child: Text(
                                                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of ',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 13.sp,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 14.0,
                                                      vertical: 15),
                                                  child: Row(
                                                    children: [
                                                      const CircleAvatar(
                                                        backgroundImage:
                                                            NetworkImage(
                                                                'https://s3-alpha-sig.figma.com/img/aac6/b1b1/8acee54880feb3c84cfacdb2ff89076d?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=E4WU27ot-pMn0G-0RjNY72aWp0NJtHGbfkfEbTy4YdJcWYecj3d~7UYCTW2Wo40Iyvg5phpe~rwqTzkGVXwV5JT-pn77DKONKqDZ0WkK841fId2vtvXd8yaN3YgkREo0I-ov0wOPmuzihk3vQ5MYyheLhtXXvYYhCl~s1lZ3baCc1uyYfN9ttIxlLHFk4ak6jRKA~NJYmzeBTvvygqqANAO8s22kG1WOyusy0-~zfKeGbN-tvBmo5V-2xRL1w~qs2vG9iwXAcJePjEhIJSayzrHi7n~qduNQJooy3oqVQeG6Vnacdrnnij4szLzF61R-DTBEX1dMR4FWJ5fmCHPnOA__'),
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      Column(
                                                        children: [
                                                          Text(
                                                            'Albert Roben',
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                          Text(
                                                            'Sep 24, 2022',
                                                            style: poppins,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                if (index == 1)
                                                  Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            _isExpanded =
                                                                !_isExpanded;
                                                          });
                                                        },
                                                        child: Text(
                                                          _isExpanded
                                                              ? 'View Less'
                                                              : '',
                                                          style: GoogleFonts
                                                              .poppins(
                                                            color: appcolor,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      CustomButton(
                                                        buttonWidth: 180.w,
                                                        buttonHeight: 40.h,
                                                        buttonColor: appcolor,
                                                        buttonText:
                                                            'Add Review',
                                                        onPressed: () {},
                                                      ),
                                                    ],
                                                  ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    CustomButton(
                                        buttonWidth: 180.w,
                                        buttonHeight: 40.h,
                                        buttonText: 'Add Review',
                                        onPressed: () {}),
                                  ],
                                ),
                              )
                          ])))))
            ])));
  }
}
