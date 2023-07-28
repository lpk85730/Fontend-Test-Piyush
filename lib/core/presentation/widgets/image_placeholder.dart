import 'package:demo_project/core/constants/image_constants.dart';
import 'package:demo_project/core/constants/theme_constants.dart';
import 'package:demo_project/core/presentation/widgets/icon_image.dart';
import 'package:flutter/material.dart';

class ImagePlaceHolder extends StatelessWidget {
  const ImagePlaceHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: double.maxFinite,
      alignment: Alignment.center,
      color: ThemeColors.clrPlaceHolderBG,
      child: const IconImage(
        imageAsset: ImageConstants.imgImage,
        size: 45,
        iconColor: ThemeColors.clrPlaceHolderIcon,
      ),
    );
  }
}
