import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_application/Utils/colors.dart';

// ignore: must_be_immutable
class CustomButton extends StatefulWidget {
  double? buttonWidth;
  double? buttonHeight;
  String buttonText;
  Color? buttonColor;
  Color? textColor;
  double? buttonRadius;
  double? buttonFontSize;
  FontWeight? buttonFontWeight;
  Function onPressed;
  final double? horizontalPadding;
  final double? verticalPadding;

  CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.buttonColor,
    this.buttonFontSize,
    this.buttonFontWeight,
    this.buttonHeight,
    this.buttonRadius,
    this.buttonWidth,
    this.textColor,
    this.horizontalPadding,
    this.verticalPadding,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.buttonWidth ?? 20.w,
      height: widget.buttonHeight ?? 5.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.buttonColor ?? appcolor,
          padding: EdgeInsets.symmetric(
              horizontal: widget.horizontalPadding ?? 5.w,
              vertical: widget.verticalPadding ?? 3.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(widget.buttonRadius ?? 10.0),
            ),
          ),
        ),
        onPressed: () => widget.onPressed(),
        child: Text(
          widget.buttonText,
          style: GoogleFonts.poppins(
            color: widget.textColor ?? Colors.white,
            fontSize: widget.buttonFontSize?.toDouble() ?? 12.sp,
            fontWeight: widget.buttonFontWeight ?? FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
