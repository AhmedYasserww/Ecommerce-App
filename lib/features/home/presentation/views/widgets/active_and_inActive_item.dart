import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(image);
  }
}
class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.image, required this.title});
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          color: const Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color:AppColors.primaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(child: SvgPicture.asset(image)),
            ),
            const SizedBox(width: 4,),
            Text(title,style: AppTextStyles.semiBold11.copyWith(color: AppColors.primaryColor),),
          ],
        )

      ),
    );
  }
}