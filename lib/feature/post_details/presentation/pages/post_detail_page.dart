import 'package:demo_project/core/constants/string_constants.dart';
import 'package:demo_project/core/constants/theme_constants.dart';
import 'package:demo_project/core/presentation/widgets/notification_icon.dart';
import 'package:demo_project/feature/post_details/controller/post_controller.dart';
import 'package:demo_project/feature/post_details/presentation/widgets/comment_box.dart';
import 'package:demo_project/feature/post_details/presentation/widgets/comment_section/post_comment_section.dart';
import 'package:demo_project/feature/post_details/presentation/widgets/post_details.dart';
import 'package:demo_project/feature/post_details/presentation/widgets/post_header.dart';
import 'package:demo_project/feature/post_details/presentation/widgets/post_images.dart';
import 'package:demo_project/feature/post_details/presentation/widgets/post_tags.dart';
import 'package:demo_project/feature/post_details/presentation/widgets/post_utility_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class PostDetailPage extends StatelessWidget {
  PostDetailPage({super.key});

  final postController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          color: ThemeColors.clrBlack50,
          onPressed: SystemNavigator.pop,
        ),
        centerTitle: true,
        title: const Text(
          StringConstants.strTitleName,
          style: TextStyle(
            color: ThemeColors.clrBlack50,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: const [NotificationIcon()],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  const PostHeader(),
                  const PostDetails(),
                  PostTags(postTagsList: postController.postTagsList),
                  PostImages(imgList: postController.imageList),
                  const PostUtilitySection(),
                  Container(
                    height: 2,
                    width: double.maxFinite,
                    color: ThemeColors.clrWhite50,
                  ),
                  const PostCommentSection()
                ],
              ),
            ),
            const CommentBox()
          ],
        ),
      ),
    );
  }
}
