import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/featured_item_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.of(context).size.width * .9;
    return ClipRRect(
      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(4),topRight: Radius.circular(4)),
      child: SizedBox(
        width: itemWidth ,
        child:  AspectRatio(
          aspectRatio: 342/158,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: itemWidth* 0.4,
                bottom: 0,
                  child:SvgPicture.asset(AppImages.pageViewItem2Image,fit: BoxFit.fill,)
              ),
              Container(
                width: itemWidth* 0.5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: svg.Svg(AppImages.featuredItemShape),
                    fit: BoxFit.fill
                  )
                ),
                child:Padding(
                  padding: const EdgeInsets.only(right: 33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 25,),
                      Opacity(
                        opacity: 0.80,
                        child: Text(
                          'عروض العيد',
                          style: AppTextStyles.regular13.copyWith(color: Colors.white)

                        ),
                      ),
                      Spacer(),
                      Text(
                        'خصم 25%',
                        style:AppTextStyles.bold19.copyWith(color: Colors.white)

                      ),
                  SizedBox(height: 12,),
                  FeaturedItemButton(),
                      SizedBox(height: 29,)




                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

