
import 'package:ecommerce_app/features/best_selling_fruits/presentation/views/widgets/best_selling_view_body.dart';
import 'package:ecommerce_app/features/best_selling_fruits/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:flutter/material.dart';
class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
static const routeName = 'best-selling';
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: CustomHomeAppBar(),
body:  BestSellingViewBody(),

    );
  }
}


