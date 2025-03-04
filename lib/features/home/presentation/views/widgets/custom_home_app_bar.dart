import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_text_styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(AppImages.profileImage),
      title:  Text('صباح الخير !..',style: AppTextStyles.regular16.copyWith(
        color: const Color(0xFF949D9E),
      ),
     ),
      subtitle: const Text("أحمد مصطفي",style: AppTextStyles.bold16,),
      trailing:CircleAvatar(
        backgroundColor:const Color(0xFFEEF8ED) ,
        radius: 17,
          child: SvgPicture.asset(AppImages.notificationIcon)),
    );
  }
}