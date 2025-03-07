import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'الأكثر مبيعًا',

          style: AppTextStyles.bold16,
        ),
        Text(
          'المزيد',
          textAlign: TextAlign.center,
          style: AppTextStyles.regular13.copyWith(color: const Color(0xFF949D9E)),
        ),

      ],
    );
  }
}
