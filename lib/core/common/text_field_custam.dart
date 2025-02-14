import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:xdzuio_app/core/utils/Themes/app_color.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final Color? hintcolor;
  final Color? iconcolor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final double borderRadius;
  final TextAlign textAlign;
  final int? maxLength;
  final bool filled;

  const CustomTextField({
    Key? key,
    this.hintText = '',
    this.hintcolor,
    this.iconcolor,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.onSubmitted,
    this.borderColor,
    this.focusedBorderColor,
    this.borderRadius = 8.0,
    this.textAlign = TextAlign.start,
    this.maxLength,
    this.filled = false,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.gray2,
      maxLength: widget.maxLength,
      textAlign: widget.textAlign,
      controller: widget.controller,
      obscureText: _isObscured,
      keyboardType: widget.keyboardType,
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      style: TextStyle(
        fontSize: widget.fontSize ?? 18.0.sp,
        fontWeight: widget.fontWeight ?? FontWeight.normal,
        color: widget.textColor ?? Colors.black,
      ),
      decoration: InputDecoration(
        filled: widget.filled,
        fillColor: widget.filled ? const Color(0xFFFCFCFD) : null,
        counterText: "", // Hides default character counter
        contentPadding: EdgeInsets.symmetric(
          vertical: 16.sp,
          horizontal: 15.sp,
        ),
        hintText: widget.hintText,
        hintStyle: TextStyle(
            color: widget.hintcolor ?? AppColors.gray2,
            // fontSize: 16.sp,
            fontWeight: FontWeight.w500),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(
            width: 1.0,
            color: widget.borderColor ?? AppColors.gray,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(
            width: 1.5,
            color: widget.focusedBorderColor ?? AppColors.gray,
          ),
        ),
        prefixIcon: widget.prefixIcon != null
            ? Icon(
                widget.prefixIcon,
                color: widget.iconcolor ?? Colors.grey,
              )
            : null,
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  _isObscured ? Icons.visibility : Icons.visibility_off,
                  color: widget.iconcolor ?? AppColors.gray2,
                ),
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
              )
            : (widget.suffixIcon != null
                ? Icon(
                    widget.suffixIcon,
                    color: widget.iconcolor ?? AppColors.gray2,
                  )
                : null),
      ),
    );
  }
}
