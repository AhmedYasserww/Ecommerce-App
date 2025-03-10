import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor:const Color(0xFFEEF8ED) ,
        radius: 17,
        child: SvgPicture.asset(AppImages.notificationIcon));
  }
}