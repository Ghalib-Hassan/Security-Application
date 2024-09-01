import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/button.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/colors.dart';
import 'package:security_application/Views/Hassam%20Task/UserScreens/Booking_Guard.dart';

class SecurityguardProfile extends StatefulWidget {
  const SecurityguardProfile({super.key});

  @override
  State<SecurityguardProfile> createState() => _SecurityguardProfileState();
}

class _SecurityguardProfileState extends State<SecurityguardProfile> {
  double _currentRating = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 250.h,
                width: double.infinity,
                child: Image.asset(
                  "asset/johnguard.png",
                  fit: BoxFit.cover,
                ),
              ),
               Positioned(
                          top: 50,
                          left: 30,
                          child: Container(
                            height: 32.h,
                            width: 32.w,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(60)),
                            child: Center(
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back_rounded,
                                    color: Darkblue,
                                  )),
                            ),
                          )),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 117.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21.r),
                      topRight: Radius.circular(21.r),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'John Robert',
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.save,
                                )),
                          ],
                        ),
                        Container(
                          height: 50.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(123, 158, 158, 158),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Mybutton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    textStyle: const TextStyle(color: white)),
                                text: 'Profile',
                                height: 30.h,
                                width: 80.w,
                                color: Darkblue,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Mybutton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    textStyle: const TextStyle(color: blue)),
                                text: 'Rating',
                                height: 30.h,
                                width: 80.w,
                                color: white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.black26,
                      ),
                      Text(
                        'London, UK',
                        style: TextStyle(color: Colors.black26),
                      ),
                      SizedBox(width: 50),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.black26,
                          ),
                          Text(
                            '15 km',
                            style: TextStyle(color: Colors.black26),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0), // Adding space between rows
                  const Row(
                    children: [
                      Icon(
                        Icons.hiking_rounded,
                        color: Colors.black26,
                      ),
                      Text(
                        '5 ft, 3 in',
                        style: TextStyle(color: Colors.black26),
                      ),
                      SizedBox(width: 70),
                      Row(
                        children: [
                          Icon(
                            Icons.lock_sharp,
                            color: Colors.black26,
                          ),
                          Text(
                            '64 kg',
                            style: TextStyle(color: Colors.black26),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 45.h,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Center(
                          child: Text(
                            _currentRating.toStringAsFixed(1),
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '~\$15',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                          ),
                        ),
                        Text(
                          '(per hour)',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15.sp,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 250.w,
                    child: const Divider(
                      thickness: 1,
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black26,
                      ),
                      Text(
                        '  +1 (904) 434 4245',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h,),
                  const Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.black26,
                      ),
                      Text(
                        '  john@gmail.com',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,),
                    child: Mybutton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>const BookingGuard()));
                        },
                        style: TextButton.styleFrom(
                            textStyle: const TextStyle(color: white)),
                        text: 'Book Now',
                        height: 40.h,
                        width: 200.w,
                        color: Darkblue),
                  ),

                  // SizedBox(height: 10.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    child: Mybutton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            textStyle: const TextStyle(color: Darkblue)),
                        text: 'Call John Now',
                        height: 40.h,
                        width: 200.w,
                        color: white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
