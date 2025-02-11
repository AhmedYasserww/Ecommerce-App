import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/services/shared_preferences_singleton.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/features/auth/presentation/views/log_in_view.dart';
import 'package:ecommerce_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  initState() {
    super.initState();
    executeNavigation();
  }


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
  void executeNavigation() {
    bool isOnboardingViewSeen = Prefs.getBool(kIsOnboardingViewSeen);
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnboardingViewSeen) {
        Navigator.pushReplacementNamed(context, LogInView.routeName);
      }
      else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
