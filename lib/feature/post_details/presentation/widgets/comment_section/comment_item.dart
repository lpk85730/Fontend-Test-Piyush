import 'package:demo_project/core/constants/theme_constants.dart';
import 'package:demo_project/feature/post_details/presentation/widgets/comment_section/comment_header.dart';
import 'package:demo_project/feature/post_details/presentation/widgets/comment_section/commnet_utilities.dart';
import 'package:demo_project/feature/post_details/presentation/widgets/user_avatar.dart';
import 'package:flutter/material.dart';

class CommentItem extends StatelessWidget {
  const CommentItem({
    required this.profileUrl,
    required this.userName,
    required this.userComment,
    this.isUserVerified = false,
    this.isComment = false,
    super.key,
  });

  final String profileUrl;
  final String userName;
  final String userComment;
  final bool isUserVerified;
  final bool isComment;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UserAvatar(profileUrl: profileUrl),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              CommentHeader(userName: userName, isUserVerified: isUserVerified),
              const SizedBox(height: 20),
              Text(
                userComment,
                style: const TextStyle(
                  color: ThemeColors.clrBlack100,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 4),
              CommentUtilities(isComment: isComment),
            ],
          ),
        )
      ],
    );
  }
}
