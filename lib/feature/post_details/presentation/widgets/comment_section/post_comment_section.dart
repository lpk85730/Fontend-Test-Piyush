import 'package:demo_project/core/constants/image_constants.dart';
import 'package:demo_project/core/constants/string_constants.dart';
import 'package:demo_project/feature/post_details/presentation/widgets/comment_section/comment_item.dart';
import 'package:flutter/material.dart';

class PostCommentSection extends StatelessWidget {
  const PostCommentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        children: [
          const CommentItem(
            profileUrl: ImageConstants.imgProfile,
            userName: StringConstants.strUserName1,
            userComment: StringConstants.strUser1Comment,
            isComment: true,
            isUserVerified: true,
          ),
          Container(
            margin: const EdgeInsets.only(left: 48, top: 12),
            child: const CommentItem(
              profileUrl: ImageConstants.imgProfile2,
              userName: StringConstants.strUserName2,
              userComment: StringConstants.strUser2Comment,
            ),
          ),
        ],
      ),
    );
  }
}
