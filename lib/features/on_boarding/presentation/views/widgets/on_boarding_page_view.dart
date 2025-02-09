import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children:  const [
PageViewItem(
    title:Row(
      children: [
        Text("Fruit",style: TextStyle(color: Colors.green,fontSize: 20),),
  Text("HUB"),
        Text("مرحبًا بك في",style: TextStyle(color: Colors.black,fontSize: 20),),

      ],
    ),
    subtitle:"اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
    image:AppImages.pageViewItem1Image,
    backgroundImage: AppImages.pageViewItem1background
)
      ],
    );
  }
}
