import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class SearchField extends StatelessWidget {
  String text;
  SearchField({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.w,
      height: 40.h,
      decoration: BoxDecoration(
          color: const Color(0x00f4f5f7).withOpacity(1),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: const Color(0x00c1c7d0).withOpacity(1),
            ),
            Text(
              text,
              style: GoogleFonts.poppins(
                  color: const Color(0x00c1c7d0).withOpacity(1), fontSize: 10.sp),
            ),
          ],
        ),
      ),
    );
  }
}
