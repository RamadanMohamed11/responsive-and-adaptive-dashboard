import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.titleColor,
    required this.backgroundColor,
    required this.edgeInsets,
  });
  final String title;
  final Color? titleColor;
  final Color backgroundColor;
  final EdgeInsets edgeInsets;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {},
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Padding(
          padding: edgeInsets,
          child: Text(
            title,
            style: Styles.styleSemiBold18(context).copyWith(color: titleColor),
          ),
        ),
      ),
    );
  }
}
