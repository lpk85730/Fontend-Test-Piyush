import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({required this.profileUrl, super.key});

  final String profileUrl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(profileUrl),
      radius: 20,
    );
  }
}
