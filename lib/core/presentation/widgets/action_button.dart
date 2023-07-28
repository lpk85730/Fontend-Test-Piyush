import 'package:demo_project/core/constants/theme_constants.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    required this.onPressed,
    this.titleImage,
    this.title,
    this.margin,
    this.padding,
    this.borderRadius,
    this.textStyle,
    this.isLarge = false,
    this.backgroundColor,
    this.foregroundColor,
    Key? key,
  }) : super(key: key);

  final String? titleImage;
  final String? title;
  final Function()? onPressed;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;
  final bool isLarge;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: (margin != null) ? margin : EdgeInsets.zero,
      child: isLarge
          ? Row(children: [Expanded(child: getElevatedButton())])
          : getElevatedButton(),
    );
  }

  Widget getElevatedButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? ThemeColors.clrTeal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 30),
        ),
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        alignment: Alignment.center,
      ),
      onPressed: onPressed,
      child: title != null
          ? Text(
              title!,
              style: textStyle ??
                  const TextStyle(
                    color: ThemeColors.clrWhite,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
            )
          : Image.asset(
              titleImage!,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              height: 30,
              width: 30,
            ),
    );
  }
}
