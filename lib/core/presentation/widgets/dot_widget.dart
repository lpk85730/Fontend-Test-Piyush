import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  const DotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2,
      height: 2,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: const ShapeDecoration(
        color: Color(0xFF909DB5),
        shape: OvalBorder(),
      ),
    );
  }
}
