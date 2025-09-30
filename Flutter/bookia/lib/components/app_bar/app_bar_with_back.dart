import 'package:bookia/core/constants/app_images.dart';
import 'package:bookia/core/routes/naviagtion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWithBack extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWithBack({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: GestureDetector(
        onTap: () {
          pop(context);
        },
        child: SvgPicture.asset(AppImages.backSvg),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
