import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:ecommerce_app/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children:   [
PageViewItem(
  isVisible: true,
  //(pageController.hasClients?pageController.page!.round() :0 )==0 ,
    title:  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("مرحبًا بك في",style: AppTextStyles.bold23,),
        const SizedBox(width: 2,),
        Text(" HUB",style: AppTextStyles.bold23.copyWith(  color: AppColors.secondaryColor,),),

        Text("Fruit",style: AppTextStyles.bold23.copyWith( color:AppColors.primaryColor,),),



      ],
    ),
    subtitle:"اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
    image:AppImages.pageViewItem1Image,
    backgroundImage: AppImages.pageViewItem1background
),
        const PageViewItem(
            isVisible:false,
            //(pageController.hasClients?pageController.page!.round() :0 )!=1 ,
            title: Text("ابحث وتسوق",textAlign: TextAlign.center,style: AppTextStyles.bold23,),
            subtitle:"نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
            image:AppImages.pageViewItem2Image,
            backgroundImage: AppImages.pageViewItem2background
        )
      ],
    );
  }
}
