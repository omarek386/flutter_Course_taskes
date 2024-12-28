import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final String hintText;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  final bool? obscureText;
  final Color? backGroundColor;
  final TextEditingController controller;
  const AppTextFormField(
      {super.key,
      required this.controller,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      required this.hintText,
      this.hintStyle,
      this.suffixIcon,
      this.obscureText,
      this.backGroundColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      height: 55.h,
      child: TextFormField(
        cursorColor: Colors.blue,
        controller: controller,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(
                vertical: 20.h,
                horizontal: 20.w,
              ),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.blue,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
              ),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey[300]!,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
              ),
          hintStyle:
              hintStyle ?? TextStyle(fontSize: 14.sp, color: Colors.grey),
          hintText: hintText,
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: backGroundColor ?? Colors.grey[200]!,
        ),
        obscureText: obscureText ?? false,
        style:
            inputTextStyle ?? TextStyle(fontSize: 14.sp, color: Colors.black),
      ),
    );
  }
}
