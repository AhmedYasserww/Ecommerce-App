import 'package:ecommerce_app/features/home/domain/entites/bottom_navigation_bar_entity.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/active_and_inActive_item.dart';
import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.isActive,
    required this.navigationBarEntity,
  });

  final bool isActive;
  final NavigationBarEntity navigationBarEntity;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 250), // Smooth transition duration
      tween: Tween<double>(begin: 1, end: isActive ? 1.1 : 1), // Scale effect
      curve: Curves.easeInOut, // Smooth easing
      builder: (context, scale, child) {
        return Transform.scale(
          scale: scale,
          child: isActive
              ? ActiveItem(
            image: navigationBarEntity.activeImage,
            title: navigationBarEntity.name,
          )
              : InActiveItem(
            image: navigationBarEntity.inActiveImage,
          ),
        );
      },
    );
  }
}
