import 'package:ecommerce_app/features/auth/presentation/views/widgets/sign_in_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
static const String routeName = 'LogInView';
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar:CustomAppBar(
        title: "'تسجيل دخول'",
      ) ,
      body: SignInViewBodyBlocConsumer(),
    );
  }
}





