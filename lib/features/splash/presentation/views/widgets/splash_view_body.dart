import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/services/fire_base_auth_service.dart';
import 'package:ecommerce_app/core/services/shared_preferences_singleton.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:ecommerce_app/features/home/presentation/views/home_view.dart';
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
    Future.delayed(const Duration(seconds:4), () {
      if (isOnboardingViewSeen) {
        var isLoggedIn = FireBaseAuthService().iSLoggedIn();
        if(isLoggedIn){
          Navigator.pushReplacementNamed(context, HomeView.routeName);
        }
        else{
          Navigator.pushReplacementNamed(context, SignInView.routeName);
        }
      }

      else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
