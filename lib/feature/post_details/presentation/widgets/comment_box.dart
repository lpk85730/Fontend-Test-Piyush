import 'package:demo_project/core/constants/image_constants.dart';
import 'package:demo_project/core/constants/theme_constants.dart';
import 'package:demo_project/core/presentation/widgets/icon_image.dart';
import 'package:demo_project/core/presentation/widgets/text_field.dart';
import 'package:flutter/material.dart';

class CommentBox extends StatelessWidget {
  const CommentBox({super.key});

  @override
  Widget build(BuildContext context) {
    final commentBoxController = TextEditingController();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: ThemeColors.clrWhite50, width: 0.5),
        ),
      ),
      child: Row(
        children: [
          const IconImage(imageAsset: ImageConstants.imgImage),
          const SizedBox(width: 16),
          Expanded(child: CommonTextField(controller: commentBoxController)),
          const SizedBox(width: 16),
          const Text(
            "등록",
            style: TextStyle(
              color: ThemeColors.clrSend,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
