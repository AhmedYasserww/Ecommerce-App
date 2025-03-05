import 'package:ecommerce_app/features/home/presentation/views/widgets/featured_item.dart';
import 'package:flutter/material.dart';
class FeaturedItemListView extends StatelessWidget {
  const FeaturedItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(8, (index) => const FeaturedItem()),
      ),
    );
  }
}
