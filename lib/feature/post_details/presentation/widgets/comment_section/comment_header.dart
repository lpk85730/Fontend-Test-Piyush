import 'package:demo_project/core/constants/theme_constants.dart';
import 'package:demo_project/feature/post_details/presentation/widgets/verified_icon.dart';
import 'package:flutter/material.dart';

class CommentHeader extends StatelessWidget {
  const CommentHeader(
      {required this.userName, this.isUserVerified = false, super.key});

  final String userName;
  final bool isUserVerified;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          userName,
          style: const TextStyle(
            color: ThemeColors.clrBlack50,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        if (isUserVerified) const VerifiedIcon() else const SizedBox(width: 4),
        const Text(
          '1일전',
          style: TextStyle(
            color: ThemeColors.clrBlue50,
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.more_horiz,
          color: ThemeColors.clrIcon,
        )
      ],
    );
  }
}
