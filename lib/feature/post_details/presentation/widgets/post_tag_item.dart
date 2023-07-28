import 'package:demo_project/core/constants/theme_constants.dart';
import 'package:flutter/material.dart';

class PostTagItem extends StatelessWidget {
  const PostTagItem({required this.label, super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: ThemeColors.clrWhite50,
        border: Border.all(color: ThemeColors.clrBorder, width: 0.25),
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: ThemeColors.clrTag,
          fontSize: 12,
          fontFamily: ThemeFonts.roboto,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
