import 'package:demo_project/core/constants/image_constants.dart';
import 'package:demo_project/core/constants/theme_constants.dart';
import 'package:flutter/material.dart';

class PostDetailPage extends StatelessWidget {
  const PostDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: ThemeColors.clrBlack50,
        ),
        backgroundColor: ThemeColors.clrWhite,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "자유톡",
          style: TextStyle(
            color: ThemeColors.clrBlack50,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: const ImageIcon(
              size: 24,
              AssetImage(ImageConstants.imgNotification),
              color: ThemeColors.clrIcon,
            ),
          ),
        ],
      ),
    );
  }
}
