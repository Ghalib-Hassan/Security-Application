import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/button.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/colors.dart';
import 'package:security_application/Views/Hassam%20Task/custom_widget/searchbar.dart';

class Favorit extends StatefulWidget {
  const Favorit({super.key});

  @override
  State<Favorit> createState() => _FavoritState();
}

class _FavoritState extends State<Favorit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 110, top: 30),
            child: Text(
              'My favourites',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 20),
            child: Mysearch(height: 50.h, width: 250.w),
          ),
          SizedBox(
            height: 10.h,
          ),
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
                                color: Colors.black45, fontSize: 10.sp),
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
                          'John Robert',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 110),
                        child: Text(
                          '~\$15/day',
                          style:
                              TextStyle(color: Colors.black45, fontSize: 10.sp),
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
                                      color: Darkblue, fontSize: 7.sp)),
                              text: 'remove',
                              height: 25.h,
                              width: 50.w,
                              color: white)
                        ],
                      ),
                    ],
                  ),
                ],
              )),
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
                                color: Colors.black45, fontSize: 10.sp),
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
                          'John Robert',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 110),
                        child: Text(
                          '~\$15/day',
                          style:
                              TextStyle(color: Colors.black45, fontSize: 10.sp),
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
                                      color: Darkblue, fontSize: 7.sp)),
                              text: 'remove',
                              height: 25.h,
                              width: 50.w,
                              color: white)
                        ],
                      ),
                    ],
                  ),
                ],
              )),
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
                                color: Colors.black45, fontSize: 10.sp),
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
                          'John Robert',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 110),
                        child: Text(
                          '~\$15/day',
                          style:
                              TextStyle(color: Colors.black45, fontSize: 10.sp),
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
                                      color: Darkblue, fontSize: 7.sp)),
                              text: 'remove',
                              height: 25.h,
                              width: 50.w,
                              color: white)
                        ],
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
