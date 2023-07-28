import 'package:demo_project/core/constants/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonTextField extends StatefulWidget {
  const CommonTextField({
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.onChanges,
    this.textInputFormatter,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;
  final Function(String)? onChanges;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? textInputFormatter;

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  final FocusNode _focus = FocusNode();

  @override
  void initState() {
    super.initState();
    _focus.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      scrollPadding: const EdgeInsets.only(bottom: 40),
      textCapitalization: TextCapitalization.sentences,
      inputFormatters: widget.textInputFormatter,
      focusNode: _focus,
      style: const TextStyle(
        color: ThemeColors.clrBlack,
        fontWeight: FontWeight.w400,
        fontSize: 12,
      ),
      cursorColor: ThemeColors.clrBlack,
      textInputAction: TextInputAction.done,
      keyboardType: widget.keyboardType,
      onChanged: widget.onChanges,
      decoration: const InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: ThemeColors.clrWhite,
        contentPadding: EdgeInsets.symmetric(vertical: 5),
        isDense: true,
        hintText: "댓글을 남겨주세요.",
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: ThemeColors.clrIcon,
        ),
      ),
    );
  }
}
