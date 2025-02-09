import 'package:ecommerce_app/core/utils/app_images.dart';
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
  isVisible: (pageController.hasClients?pageController.page!.round() :0 )==0 ,
    title:const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("مرحبًا بك في",style: TextStyle(color: Colors.black,fontSize: 20),),
        Text("Fruit",style: TextStyle(color: Colors.green,fontSize: 20),),
  Text("HUB"),


      ],
    ),
    subtitle:"اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
    image:AppImages.pageViewItem1Image,
    backgroundImage: AppImages.pageViewItem1background
),
        PageViewItem(
            isVisible: (pageController.hasClients?pageController.page!.round() :0 )!=1 ,
            title:const Text("ابحث وتسوق",textAlign: TextAlign.center,),
            subtitle:"نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
            image:AppImages.pageViewItem2Image,
            backgroundImage: AppImages.pageViewItem2background
        )
      ],
    );
  }
}
