import 'package:demo_project/core/constants/image_constants.dart';
import 'package:demo_project/core/presentation/widgets/icon_image.dart';
import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: const IconImage(imageAsset: ImageConstants.imgNotification),
    );
  }
}
