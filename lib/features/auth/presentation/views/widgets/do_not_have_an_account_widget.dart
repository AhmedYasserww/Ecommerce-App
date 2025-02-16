import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
class DoNotHaveAnAccountWidget extends StatelessWidget {
  const DoNotHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'لا تمتلك حساب؟',
            style:AppTextStyles.semiBold16.copyWith(color: const Color(0xFF949D9E),),
          ),
          TextSpan(
            text: ' ',
            style:AppTextStyles.semiBold16.copyWith(color: const Color(0xFF616A6B)),
          ),
          TextSpan(
            text: 'قم بانشاء حساب',
            style: AppTextStyles.semiBold16.copyWith(color:AppColors.primaryColor),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
