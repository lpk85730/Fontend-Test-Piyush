import 'package:demo_project/core/constants/image_constants.dart';
import 'package:demo_project/core/constants/theme_constants.dart';
import 'package:demo_project/core/presentation/widgets/icon_image.dart';
import 'package:flutter/material.dart';

class CommentUtilities extends StatelessWidget {
  const CommentUtilities({this.isComment = false, super.key});

  final bool isComment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IconImage(
          imageAsset: ImageConstants.imgLike,
          size: 25,
        ),
        const Text(
          '5',
          style: TextStyle(
            color: ThemeColors.clrBlue50,
            fontSize: 10,
            fontFamily: ThemeFonts.roboto,
            fontWeight: FontWeight.w400,
          ),
        ),
        if (isComment) commentWidget() else const SizedBox.shrink(),
      ],
    );
  }

  Widget commentWidget() {
    return const Row(
      children: [
        SizedBox(width: 8),
        IconImage(
          imageAsset: ImageConstants.imgComment,
          size: 25,
        ),
        Text(
          '5',
          style: TextStyle(
            color: ThemeColors.clrBlue50,
            fontSize: 10,
            fontFamily: ThemeFonts.roboto,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
