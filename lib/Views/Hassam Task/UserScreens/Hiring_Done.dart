import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/button.dart';
import 'package:security_application/Views/Hassam%20Task/Constants/colors.dart';
import 'package:security_application/Views/Hassam%20Task/UserScreens/Pay_Guard.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HiringDone extends StatefulWidget {
  const HiringDone({super.key});

  @override
  State<HiringDone> createState() => _HiringDoneState();
}

class _HiringDoneState extends State<HiringDone> {
  double _currentRating = 5.0;
  double _value = 40.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Stack(
        children: [
          Container(
              height: 160.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      // bottomLeft: Radius.circular(21),
                      // bottomRight: Radius.circular(21)
                      )),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
                child: Image.asset(
                  'asset/johnguard.png',
                  fit: BoxFit.cover,
                ),
              )),
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
        ],
      ),
      Padding(
          padding: const EdgeInsets.only(left: 9, top: 5),
          child: Row(children: [
            Text(
              'John Robert',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
            ),
            SizedBox(
              width: 50.w,
            ),
            Text(
              '~\$15 (per hour)',
              style: TextStyle(
                  color: black, fontWeight: FontWeight.normal, fontSize: 10.sp),
            ),
          ])),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 50.h,
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
      const Text("You have hired John Robert\n for 18 hours. "),
      SizedBox(
        height: 50.h,
        width: 200.w,
        child: SfSlider(
          min: 0,
          max: 24,
          value: _value,
          inactiveColor: Colors.yellow,
          activeColor: Darkblue,
          interval: 6,
          showTicks: true,
          showLabels: true,
          enableTooltip: true,
          shouldAlwaysShowTooltip: false,
          stepSize: 1,
          minorTicksPerInterval: 0,
          onChanged: (dynamic value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
      Container(
          height: 70.h,
          width: 250.w,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'From',
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    height: 40.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(15)),
                  )
                ],
              ),
              Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('To'),
                  Container(
                    height: 40.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(15)),
                  )
                ],
              )
            ],
          )),
          SizedBox(height: 10.h,),
      Mybutton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context)=>const PayForSecurity()));
          },
          style: TextButton.styleFrom(textStyle: const TextStyle(color: white)),
          text: 'Done Job and Pay Now',
          height: 40.h,
          width: 200.dg,
          color: Darkblue)
    ]));
  }
}
