import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:xdzuio_app/core/utils/Themes/app_color.dart';

class MainCustomButton extends StatelessWidget {
  final String title;
  final String? image; // Path to the image (can be null)
  final VoidCallback onTap;
  final Color? col;
  final Color? textColor;
  final Color? backColour;
  final Color? borderColor;
  final double? width;
  final double? height;
  final double? cir;

  const MainCustomButton({
    super.key,
    this.image,
    required this.title,
    required this.onTap,
    this.col,
    this.textColor,
    this.backColour,
    this.borderColor = AppColors.primaryColor,
    this.width,
    this.height,
    this.cir = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: height ?? 6.h,
          width: width ?? 50.w,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(cir!),
              color: backColour,
              border:
                  borderColor != null ? Border.all(color: borderColor!) : null,
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: backColour != null
                      ? Colors.white
                      : AppColors.primaryColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
