import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Custom%20Widgets/premium_text_field.dart';
import 'package:security_application/Utils/colors.dart';

class UserPayForSecurity extends StatefulWidget {
  const UserPayForSecurity({super.key});

  @override
  State<UserPayForSecurity> createState() => _UserPayForSecurityState();
}

class _UserPayForSecurityState extends State<UserPayForSecurity> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Checkout',
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color(0xff707A89)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Container(
                  width: 230.w,
                  height: 150.h,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 10,
                        color: const Color(0x00023982).withOpacity(1),
                        offset: const Offset(0, 5))
                  ], color: appcolor, borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          'Elbert John',
                          style: GoogleFonts.poppins(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: List.generate(
                                  4,
                                  (index) => const Icon(Icons.circle,
                                      color: Colors.white, size: 10)),
                            ),
                            SizedBox(width: 5.w),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: List.generate(
                                  4,
                                  (index) => const Icon(Icons.circle,
                                      color: Colors.white, size: 10)),
                            ),
                            SizedBox(width: 5.w),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: List.generate(
                                  4,
                                  (index) => const Icon(Icons.circle,
                                      color: Colors.white, size: 10)),
                            ),
                            SizedBox(width: 5.w),
                            Expanded(
                              child: Row(
                                children: List.generate(
                                    4,
                                    (index) => Text('${index + 1}',
                                        style: GoogleFonts.poppins(
                                            color: Colors.white))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'VALID THRU',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    '24/2023',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              flex: 7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'CVV',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 2.h),
                                  Row(
                                    children: List.generate(
                                        4,
                                        (index) => const Icon(Icons.circle,
                                            color: Colors.white, size: 8)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Card Holder Name',
                style: GoogleFonts.poppins(
                    color: const Color(0xff95A0AE),
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp),
              ),
              PremiumTextField(),
              SizedBox(height: 20.h),
              Text(
                'Card Number',
                style: GoogleFonts.poppins(
                    color: const Color(0xff95A0AE),
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp),
              ),
              PremiumTextField(),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expiry',
                          style: GoogleFonts.poppins(
                              color: const Color(0xff95A0AE),
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp),
                        ),
                        PremiumTextField()
                      ],
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CVV',
                          style: GoogleFonts.poppins(
                              color: const Color(0xff95A0AE),
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp),
                        ),
                        PremiumTextField()
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: 250.w,
                height: 40.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: requestColor.withOpacity(.2)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Price ',
                        style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: black),
                      ),
                      Text(
                        '\$ 104.00 ',
                        style: GoogleFonts.poppins(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                            color: black),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              Row(
                children: [
                  Text(
                    'Save for future purchase',
                    style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff1C1B1F)),
                  ),
                  SizedBox(
                    width: 5.h,
                  ),
                  Switch(
                      value: isSwitched,
                      onChanged: (bool newValue) {
                        setState(() {
                          isSwitched = newValue;
                        });
                      })
                ],
              ),
              SizedBox(height: 20.h),
              Center(
                child: CustomButton(
                    buttonWidth: 150.w,
                    buttonHeight: 40.h,
                    buttonText: 'Pay Now',
                    onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
