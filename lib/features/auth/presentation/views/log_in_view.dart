import 'package:ecommerce_app/features/auth/presentation/views/widgets/log_in_view_body.dart';
import 'package:flutter/material.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});
static const String routeName = 'LogInView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LogInViewBody(),
    );
  }
}
