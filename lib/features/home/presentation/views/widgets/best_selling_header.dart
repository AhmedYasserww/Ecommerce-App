import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:ecommerce_app/features/best_selling_fruits/presentation/views/best_selling_view.dart';
import 'package:flutter/material.dart';
class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, BestSellingView.routeName);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'الأكثر مبيعًا',

            style: AppTextStyles.bold16,
          ),
          Text(
            'المزيد',
            textAlign: TextAlign.center,
            style: AppTextStyles.regular13.copyWith(color: const Color(0xFF949D9E)),
          ),

        ],
      ),
    );
  }
}
