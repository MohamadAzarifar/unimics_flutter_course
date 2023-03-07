import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';
import '../icon.dart';

class DetailScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DetailScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      elevation: 0,
      leading: MyIcon(
        icon: Icons.arrow_back_ios_new_rounded,
        onTap: () => Navigator.of(context).pop(),
      ),
      actions: [
        MyIcon(
          icon: Icons.bookmark,
          onTap: () {},
        ),
        const SizedBox(width: AppSizes.padding),
        MyIcon(
          icon: Icons.more_vert,
          onTap: () {},
        ),
        const SizedBox(width: AppSizes.padding),
      ],
    );
  }

  @override
  final Size preferredSize = const Size(double.infinity, AppSizes.appBarHeight);
}
