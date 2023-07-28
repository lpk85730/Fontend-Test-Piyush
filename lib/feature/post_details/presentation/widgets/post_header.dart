import 'package:demo_project/core/constants/image_constants.dart';
import 'package:demo_project/core/constants/string_constants.dart';
import 'package:demo_project/core/constants/theme_constants.dart';
import 'package:demo_project/core/presentation/widgets/action_button.dart';
import 'package:demo_project/core/presentation/widgets/dot_widget.dart';
import 'package:demo_project/feature/post_details/presentation/widgets/user_avatar.dart';
import 'package:demo_project/feature/post_details/presentation/widgets/verified_icon.dart';
import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Row(
        children: [
          const UserAvatar(profileUrl: ImageConstants.imgProfile),
          const SizedBox(width: 8),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    StringConstants.strUserName1,
                    style: TextStyle(
                      color: ThemeColors.clrBlack50,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  VerifiedIcon(),
                  Text(
                    '1일전',
                    style: TextStyle(
                      color: ThemeColors.clrBlue50,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    '165cm',
                    style: TextStyle(
                      color: ThemeColors.clrBlue50,
                      fontSize: 12,
                      fontFamily: ThemeFonts.roboto,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  DotWidget(),
                  Text(
                    '53kg',
                    style: TextStyle(
                      color: ThemeColors.clrBlue50,
                      fontSize: 12,
                      fontFamily: ThemeFonts.roboto,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              )
            ],
          ),
          const Spacer(),
          ActionButton(
            onPressed: () {},
            padding: const EdgeInsets.symmetric(horizontal: 12),
            title: "팔로우",
          )
        ],
      ),
    );
  }
}
