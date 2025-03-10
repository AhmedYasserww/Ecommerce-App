import 'package:ecommerce_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:ecommerce_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:ecommerce_app/features/best_selling_fruits/presentation/views/best_selling_view.dart';
import 'package:ecommerce_app/features/home/presentation/views/home_view.dart';
import 'package:ecommerce_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:ecommerce_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case SignInView.routeName:
      return MaterialPageRoute(builder: (context) => const SignInView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
      case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
      case BestSellingView.routeName:
        return MaterialPageRoute(builder: (context) => const BestSellingView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
