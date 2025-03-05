import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
class FeaturedItemButton extends StatelessWidget {
  const FeaturedItemButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 4),
          child: Text(
            'تسوق الان',
            style: AppTextStyles.bold13.copyWith( color:AppColors.primaryColor,),

          ),
        ),
      ),
    );
  }
}
