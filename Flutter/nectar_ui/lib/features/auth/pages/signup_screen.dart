import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/core/constants/app_images.dart';
import 'package:nectar_ui/core/functions/naviagtion.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/widgets/custom_password_field.dart';
import 'package:nectar_ui/core/widgets/custom_text_field.dart';
import 'package:nectar_ui/core/widgets/main_button.dart';
import 'package:nectar_ui/features/auth/pages/login_screen.dart';

// L>R>L>R>L>

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [SvgPicture.asset(AppImages.carrotSvg)],
                ),
                SizedBox(height: 70),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SignUp',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: AppColors.darkColor,
                      ),
                    ),
                    Text(
                      'Create your account',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                CustomTextField(
                  label: 'Full Name',
                  prefix: Icon(Icons.person, color: AppColors.primaryColor),
                ),
                SizedBox(height: 20),
                CustomTextField(
                  label: 'Email',
                  prefix: Icon(Icons.email, color: AppColors.primaryColor),
                ),
                SizedBox(height: 20),
                CustomPasswordField(
                  label: 'Password',
                  prefix: Icon(Icons.lock, color: AppColors.primaryColor),
                ),

                SizedBox(height: 40),
                MainButton(text: 'SignUp', onPressed: () {}),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: AppColors.darkColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        pushWithReplacement(context, const LoginScreen());
                      },
                      child: Text(
                        'LogIn',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
