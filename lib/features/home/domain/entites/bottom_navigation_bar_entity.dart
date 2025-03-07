import 'package:ecommerce_app/core/utils/app_images.dart';

class NavigationBarEntity{
  final String inActiveImage;
  final String activeImage;
  final String name;

  NavigationBarEntity({
    required this.inActiveImage,
    required this.activeImage,
    required this.name,
  });
}
List<NavigationBarEntity>get bottomNavigationBarItems => [
  NavigationBarEntity(
    inActiveImage: AppImages.homeIcon,
    activeImage: AppImages.homeIconSelected,
    name: 'الرئيسية',
  ),
  NavigationBarEntity(
    inActiveImage: AppImages.productsIcon,
    activeImage: AppImages.productsIconSelected,
    name: 'المنتجات',
  ),
  NavigationBarEntity(
    inActiveImage: AppImages.cartIcon,
    activeImage: AppImages.cartIconSelected,
    name: 'سلة التسوق',
  ),

  NavigationBarEntity(
    inActiveImage: AppImages.profileIcon,
    activeImage: AppImages.profileIconSelected,
    name: 'حسابي',
  ),
];