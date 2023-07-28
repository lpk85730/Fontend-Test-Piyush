import 'package:demo_project/core/constants/theme_constants.dart';
import 'package:flutter/material.dart';

class VerifiedIcon extends StatelessWidget {
  const VerifiedIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: const Icon(
        Icons.check_circle_rounded,
        size: 14,
        color: ThemeColors.clrTeal,
      ),
    );
  }
}
