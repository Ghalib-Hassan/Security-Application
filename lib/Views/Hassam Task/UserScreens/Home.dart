import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/button.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/colors.dart';
import 'package:security_application/Views/Hassam%20Task/UserScreens/Guard_Profile.dart';
import 'package:security_application/Views/Hassam%20Task/custom_widget/searchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: 180.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Darkblue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(21),
                          bottomRight: Radius.circular(21))),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 70.h,
                                width: 70.w,
                                decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  'asset/user.png',
                                  fit: BoxFit.cover,
                                )),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Williumson R.',
                                    style: TextStyle(
                                        color: white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp),
                                  ),
                                  const Text('London, Uk',
                                      style: TextStyle(
                                        color: white,
                                      ))
                                ]),
                            // const SizedBox(
                            //   width: 100,
                            // ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  FontAwesomeIcons.locationArrow,
                                  color: white,
                                ))
                          ])))
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Mysearch(height: 50.h, width: 250.w),
                  Padding(
                    padding: const EdgeInsets.only(right: 100, top: 20),
                    child: Text(
                      'Security Guards near you',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 13.sp),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Stack(children: [
                    Container(
                        height: 100.h,
                        width: 250.w,
                        decoration: const BoxDecoration(color: white),
                        child: Row(
                          children: [
                            Container(
                              height: 80.h,
                              width: 80.w,
                              decoration: const BoxDecoration(
                                color: white,
                              ),
                              child: Image.asset(
                                'asset/guard.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      ' 1.5 Km away',
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 10.sp),
                                    ),
                                    const SizedBox(
                                      width: 70,
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.save,
                                          color: Colors.black38,
                                        )),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 90),
                                  child: Text(
                                    'Jaxson Kors',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 110),
                                  child: Text(
                                    '~\$15/day',
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 10.sp),
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
                                      customHalfFilledIcon: Icons.star_half,
                                      customEmptyIcon: Icons.star_border,
                                      starSize: 10,
                                      animationDuration:
                                          const Duration(milliseconds: 300),
                                      animationCurve: Curves.easeInOut,
                                      readOnly: false,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Mybutton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                            textStyle: TextStyle(
                                                color: white, fontSize: 6.sp)),
                                        text: 'Hire Now',
                                        height: 25.h,
                                        width: 50.w,
                                        color: Darkblue)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )),
                  ]),
                  SizedBox(height: 15.h),
                  Stack(children: [
                    Container(
                        height: 100.h,
                        width: 250.w,
                        decoration: const BoxDecoration(color: white),
                        child: Row(
                          children: [
                            Container(
                              height: 80.h,
                              width: 80.w,
                              decoration: const BoxDecoration(
                                color: white,
                              ),
                              child: Image.asset(
                                'asset/guard2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      ' 8 Km away',
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 10.sp),
                                    ),
                                    const SizedBox(
                                      width: 80,
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.save,
                                          color: Colors.black38,
                                        )),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 90),
                                  child: Text(
                                    'Justin Rhiel',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 110),
                                  child: Text(
                                    '~\$15/day',
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 10.sp),
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
                                      customHalfFilledIcon: Icons.star_half,
                                      customEmptyIcon: Icons.star_border,
                                      starSize: 10,
                                      animationDuration:
                                          const Duration(milliseconds: 300),
                                      animationCurve: Curves.easeInOut,
                                      readOnly: false,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Mybutton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                            textStyle: TextStyle(
                                                color: white, fontSize: 6.sp)),
                                        text: 'Hire Now',
                                        height: 25.h,
                                        width: 50.w,
                                        color: Darkblue)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )),
                  ]),
                  SizedBox(height: 15.h),
                  Stack(children: [
                    Container(
                        height: 100.h,
                        width: 250.w,
                        decoration: const BoxDecoration(color: white),
                        child: Row(
                          children: [
                            Container(
                              height: 80.h,
                              width: 75.w,
                              decoration: const BoxDecoration(
                                color: white,
                              ),
                              child: Image.asset(
                                'asset/guard3.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      ' 10 Km away',
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 10.sp),
                                    ),
                                    const SizedBox(
                                      width: 70,
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.save,
                                          color: Colors.black38,
                                        )),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 70),
                                  child: Text(
                                    ' Jaxson Bergson',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 110),
                                  child: Text(
                                    '~\$15/day',
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 10.sp),
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
                                      customHalfFilledIcon: Icons.star_half,
                                      customEmptyIcon: Icons.star_border,
                                      starSize: 10,
                                      animationDuration:
                                          const Duration(milliseconds: 300),
                                      animationCurve: Curves.easeInOut,
                                      readOnly: false,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Mybutton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                            textStyle: TextStyle(
                                                color: white, fontSize: 6.sp)),
                                        text: 'Hire Now',
                                        height: 25.h,
                                        width: 50.w,
                                        color: Darkblue)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )),
                  ]),
                  SizedBox(height: 15.h),
                  Stack(children: [
                    Container(
                        height: 100.h,
                        width: 250.w,
                        decoration: const BoxDecoration(color: white),
                        child: Row(
                          children: [
                            Container(
                              height: 80.h,
                              width: 80.w,
                              decoration: const BoxDecoration(
                                color: white,
                              ),
                              child: Image.asset(
                                'asset/guard4.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      ' 1.5 Km away',
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 10.sp),
                                    ),
                                    const SizedBox(
                                      width: 70,
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.save,
                                          color: Colors.black38,
                                        )),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 90),
                                  child: Text(
                                    'Randy Vac',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 110),
                                  child: Text(
                                    '~\$15/day',
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 10.sp),
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
                                      customHalfFilledIcon: Icons.star_half,
                                      customEmptyIcon: Icons.star_border,
                                      starSize: 10,
                                      animationDuration:
                                          const Duration(milliseconds: 300),
                                      animationCurve: Curves.easeInOut,
                                      readOnly: false,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Mybutton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                            textStyle: TextStyle(
                                                color: white, fontSize: 6.sp)),
                                        text: 'Hire Now',
                                        height: 25.h,
                                        width: 50.w,
                                        color: Darkblue)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )),
                  ]),
                  SizedBox(height: 15.h),
                  Stack(children: [
                    Container(
                        height: 100.h,
                        width: 250.w,
                        decoration: const BoxDecoration(color: white),
                        child: Row(
                          children: [
                            Container(
                              height: 80.h,
                              width: 80.w,
                              decoration: const BoxDecoration(
                                color: white,
                              ),
                              child: Image.asset(
                                'asset/guard5.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      ' 15 Km away',
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 10.sp),
                                    ),
                                    const SizedBox(
                                      width: 70,
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.save,
                                          color: Colors.black38,
                                        )),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 80),
                                  child: Text(
                                    'John Robert',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 110),
                                  child: Text(
                                    '~\$15/day',
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 10.sp),
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
                                      customHalfFilledIcon: Icons.star_half,
                                      customEmptyIcon: Icons.star_border,
                                      starSize: 10,
                                      animationDuration:
                                          const Duration(milliseconds: 300),
                                      animationCurve: Curves.easeInOut,
                                      readOnly: false,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Mybutton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const SecurityguardProfile()));
                                        },
                                        style: TextButton.styleFrom(
                                            textStyle: TextStyle(
                                                color: white, fontSize: 6.sp)),
                                        text: 'Hire Now',
                                        height: 25.h,
                                        width: 50.w,
                                        color: Darkblue)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
