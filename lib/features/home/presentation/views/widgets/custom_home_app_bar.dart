import 'package:ecommerce_app/core/helper_functions/get_user.dart';
import 'package:ecommerce_app/core/services/get_it_service.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/widgets/notification_widget.dart';
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
      subtitle:  Text(getUser().name,style: AppTextStyles.bold16,),
      trailing:const NotificationWidget(),
    );
  }
}

