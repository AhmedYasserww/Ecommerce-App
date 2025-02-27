import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:ecommerce_app/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';
class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentIndex=0;
  @override
  void initState() {
    // TODO: implement initState
    pageController=PageController();
    pageController.addListener((){
      currentIndex=pageController.page!.round();
      setState(() {

      });
    });
    super.initState();
  }
  @override
  dispose(){
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
      ),
        DotsIndicator(
          decorator:   DotsDecorator(
            activeColor: AppColors.primaryColor,
            color:currentIndex==1?  AppColors.primaryColor :const Color(0xff5DB957)
          ),
          dotsCount: 2,
        ),
        const SizedBox(height: 29,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Visibility(
            maintainAnimation: true,
            maintainSize: true,
            maintainState: true,
            visible: currentIndex==1,
            child: CustomButton(
                onPressed: (){
                  Navigator.of(context).pushReplacementNamed(SignInView.routeName);
            },text:"ابدأ الان"),
          ),
        ),
        const SizedBox(height: 43)
      ],
    );
  }
}
