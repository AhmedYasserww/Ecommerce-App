import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),

      ),
      child: Stack(
        children: [
          Positioned(
            // top: 0,
            //   right: 0,
              child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined),)),
          Positioned.fill(
    child: Column(
            children: [
              const SizedBox(height: 20,),
             Image.asset(AppImages.watermillonTest),
              const SizedBox(height: 20,),
              ListTile(
                title: const Text(
                  'فراولة',

                  style: AppTextStyles.semiBold13,

                ),
                subtitle: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '30جنية ',
                        style:AppTextStyles.bold13.copyWith(  color:  AppColors.secondaryColor,)
                      ),
                      TextSpan(
                        text: '/',
                        style:AppTextStyles.bold13.copyWith(  color:AppColors.lightSecondaryColor,)
                      ),
                      TextSpan(
                        text: ' ',
                        style:AppTextStyles.semiBold13.copyWith(  color: AppColors.secondaryColor,)
                      ),
                      TextSpan(
                        text: 'الكيلو',
                        style: AppTextStyles.semiBold13.copyWith(  color:AppColors.lightSecondaryColor,)
                      ),
                    ],
                  ),
                  textAlign: TextAlign.right,
                ),
                trailing: CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.add,color: Colors.white,)),
                )
              ),
              
            ]
          ))
          
    ]
      ),
    );
  }
}
