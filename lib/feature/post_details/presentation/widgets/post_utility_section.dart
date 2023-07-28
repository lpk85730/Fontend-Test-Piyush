import 'package:demo_project/core/constants/image_constants.dart';
import 'package:demo_project/core/constants/theme_constants.dart';
import 'package:demo_project/core/presentation/widgets/icon_image.dart';
import 'package:flutter/material.dart';

class PostUtilitySection extends StatelessWidget {
  const PostUtilitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: const Row(
        children: [
          IconImage(
            imageAsset: ImageConstants.imgLike,
            size: 32,
          ),
          Text(
            '5',
            style: TextStyle(
              color: ThemeColors.clrBlue50,
              fontSize: 12,
              fontFamily: ThemeFonts.roboto,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: 8),
          IconImage(
            imageAsset: ImageConstants.imgComment,
            size: 32,
          ),
          Text(
            '5',
            style: TextStyle(
              color: ThemeColors.clrBlue50,
              fontSize: 12,
              fontFamily: ThemeFonts.roboto,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: 8),
          IconImage(
            imageAsset: ImageConstants.imgSave,
            size: 32,
          ),
          SizedBox(width: 8),
          Icon(
            Icons.more_horiz,
            size: 32,
            color: ThemeColors.clrIcon,
          )
        ],
      ),
    );
  }
}
