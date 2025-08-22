import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Styles.styleRegular16(context).copyWith(color: Color(0xFF064061)),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Styles.styleRegular16(
          context,
        ).copyWith(color: Color(0xffAAAAAA)),
        border: getBorder(),
        enabledBorder: getBorder(),
        focusedBorder: getBorder(),
        contentPadding: EdgeInsets.all(20),
      ),
    );
  }

  OutlineInputBorder getBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Color(0xffFAFAFA)),
    );
  }
}
