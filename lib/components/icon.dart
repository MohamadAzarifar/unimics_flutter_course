import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({
    super.key,
    required this.icon,
    this.color = AppColors.tint,
    required this.onTap,
  });

  final IconData icon;
  final Color color;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}
