import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/core/constants/app_images.dart';
import 'package:nectar_ui/core/functions/naviagtion.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/features/main/main_app_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // delay with 3 sec and navigate to home screen
    Future.delayed(Duration(seconds: 3), () {
      // navigate to home screen
      pushWithReplacement(context, const MainAppScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(child: SvgPicture.asset(AppImages.logoSvg, width: 250)),
    );
  }
}
