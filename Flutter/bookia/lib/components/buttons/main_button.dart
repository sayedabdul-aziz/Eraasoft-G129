import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height = 55,
    this.width = double.infinity,
    this.margin = EdgeInsets.zero,
    this.bgColor = AppColors.primaryColor,
    this.borderColor,
    this.textColor,
  });
  final String text;
  final Function() onPressed;
  final double height;
  final double width;
  final EdgeInsetsGeometry margin;
  final Color bgColor;
  final Color? borderColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          side: borderColor != null
              ? BorderSide(color: borderColor ?? AppColors.darkColor)
              : BorderSide.none,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyles.styleSize16(
            color: textColor ?? AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
