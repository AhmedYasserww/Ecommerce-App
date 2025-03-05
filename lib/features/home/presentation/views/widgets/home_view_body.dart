import 'package:ecommerce_app/core/widgets/search_text_field.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/featured_item_list_view.dart';
import 'package:flutter/material.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child:  CustomScrollView(
        slivers: [
      SliverToBoxAdapter(
        child: Column(
          children: [
            SizedBox(height: 16,),
            CustomHomeAppBar(),
            SizedBox(height: 16,),
            SearchTextField(),
            SizedBox(height: 12,),
            FeaturedItemListView(),
          ],
        ),
      ),

        ],
      ),
    );
  }
}
