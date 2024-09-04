import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Utils/colors.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  bool _isExpanded = false;
  bool showAll = false;

  final List<String> reviews = List<String>.generate(
      10, (index) => 'Review ${index + 1}: This is a sample review.');

  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              'Images/UserSecurity.png',
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            const Icon(
                              Icons.bookmark,
                              color: Colors.amber,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Container(
                            width: 180.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                                color: const Color(0x00e8e8ed).withOpacity(1),
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
                                                    : const Color(0x00798ba3)
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
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, left: 13),
                                  child: Row(
                                    children: [
                                      Text(
                                        '4.0',
                                        style: poppins,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      RatingBar(
                                        filledIcon: Icons.star,
                                        emptyIcon: Icons.star_border,
                                        size: 17,
                                        onRatingChanged: (value) =>
                                            debugPrint('$value'),
                                        initialRating: 3,
                                        maxRating: 5,
                                      ),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
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
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: appcolor),
                                        child: const Center(
                                            child: Icon(
                                          Icons.phone,
                                          color: Colors.white,
                                        )),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 15, right: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
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
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: appcolor),
                                        child: const Center(
                                            child: Icon(
                                          Icons.email,
                                          color: Colors.white,
                                        )),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 15, right: 15),
                                  child: Text(
                                    "John Robert is Hiring for 8 hours Per day from ( Sep 2, 2022 - Sep 2, 2022)",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12.sp, color: requestColor),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: CustomButton(
                                      buttonWidth: 180.w,
                                      buttonHeight: 40.h,
                                      buttonText: 'Accept Request',
                                      onPressed: () {}),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: CustomButton(
                                      buttonWidth: 180.w,
                                      buttonHeight: 40.h,
                                      textColor: appcolor,
                                      buttonColor: Colors.white,
                                      buttonText: 'Cancel Request',
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '4.0',
                                      style: GoogleFonts.poppins(
                                          fontSize: 15.sp, color: requestColor),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    RatingBar(
                                      filledIcon: Icons.star,
                                      emptyIcon: Icons.star_border,
                                      size: 20,
                                      onRatingChanged: (value) =>
                                          debugPrint('$value'),
                                      initialRating: 3,
                                      maxRating: 5,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Text(
                                  '44 customers ratings',
                                  style:
                                      GoogleFonts.poppins(color: requestColor),
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
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14.0, vertical: 2),
                                  child: RatingBar(
                                    filledIcon: Icons.star,
                                    emptyIcon: Icons.star_border,
                                    size: 20,
                                    onRatingChanged: (value) =>
                                        debugPrint('$value'),
                                    initialRating: 3,
                                    maxRating: 5,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14.0, vertical: 5),
                                  child: Text(
                                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of ',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13.sp, color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14.0, vertical: 5),
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'Images/UserReview.png')),
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
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 14.0,
                                                      vertical: 2),
                                              child: RatingBar(
                                                filledIcon: Icons.star,
                                                emptyIcon: Icons.star_border,
                                                size: 20,
                                                onRatingChanged: (value) =>
                                                    debugPrint('$value'),
                                                initialRating: 3,
                                                maxRating: 5,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 14.0,
                                                      vertical: 15),
                                              child: Row(
                                                children: [
                                                  const CircleAvatar(
                                                      backgroundImage: AssetImage(
                                                          'Images/UserReview.png')),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'Albert Roben',
                                                        style:
                                                            GoogleFonts.poppins(
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
                                                      style:
                                                          GoogleFonts.poppins(
                                                        color: appcolor,
                                                        fontStyle:
                                                            FontStyle.italic,
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
                                                    buttonText: 'Add Review',
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
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
