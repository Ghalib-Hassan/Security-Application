import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Utils/nav_pus.dart';
import 'package:security_application/Views/Security%20Guard%20App%20Screen/Premium%20Users/card.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  List month = ['1 Month', '3 Months', 'Annual'];
  List price = [
    '\$19.99',
    '\$49.99',
    '\$199.99',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('Images/premium.png'),
              Positioned(
                  top: 40,
                  left: 30,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.adaptive.arrow_back,
                        color: Colors.white,
                        size: 30,
                      )))
            ],
          ),
          Image.asset(
            'Images/Star.png',
            scale: 2,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'Unlock the Premium',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: const Color(0xff11243D),
                fontSize: 18.sp),
          ),
          SizedBox(
            height: 3.h,
          ),
          Text(
            textAlign: TextAlign.center,
            'Get more jobs with premium \nversion.',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: const Color(0xff707A89),
                fontSize: 15.sp),
          ),
          SizedBox(
            height: 40.h,
          ),
          SizedBox(
              height: 250.h,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 190.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          title: Text(
                            month[index],
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff000000),
                                fontSize: 18.sp),
                          ),
                          subtitle: Text(
                            'Subscription',
                            style: GoogleFonts.poppins(
                                color: const Color(0xff717171),
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          trailing: Text(
                            price[index],
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff023982),
                                fontSize: 18.sp),
                          ),
                        ),
                      ),
                    );
                  })),
          CustomButton(
              buttonWidth: 150.w,
              buttonHeight: 40.h,
              buttonRadius: 10,
              buttonText: 'Continue',
              onPressed: () {
                navPush(context, const AddCard());
              }),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'Limited Version',
            style: GoogleFonts.poppins(
                color: const Color(0xff707A89),
                fontWeight: FontWeight.w400,
                fontSize: 13.sp),
          )
        ],
      ),
    );
  }
}
