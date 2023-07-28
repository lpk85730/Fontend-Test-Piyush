import 'package:demo_project/core/constants/theme_constants.dart';
import 'package:flutter/material.dart';

class IconImage extends StatelessWidget {
  const IconImage({
    required this.imageAsset,
    this.size,
    this.iconColor,
    super.key,
  });

  final double? size;
  final String imageAsset;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      size: size ?? 24,
      AssetImage(imageAsset),
      color: iconColor ?? ThemeColors.clrIcon,
    );
  }
}
