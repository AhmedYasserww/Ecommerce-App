import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Align(
  alignment: Alignment.topLeft,
    child: SvgPicture.asset(AppImages.plant)),
  SvgPicture.asset(AppImages.fruits),
  SvgPicture.asset(AppImages.circles,fit: BoxFit.fill,),

],
    );
  }
}
