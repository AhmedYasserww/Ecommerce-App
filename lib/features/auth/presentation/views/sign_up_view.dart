import 'package:ecommerce_app/core/services/get_it_service.dart';
import 'package:ecommerce_app/core/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:ecommerce_app/features/auth/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/sign_up_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = '/signUpView';

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => SignUpCubit(getIt.get<AuthRepo>()),
      child: const Scaffold(
        appBar: CustomAppBar(title: "حساب جديد"),
        body: SignUpViewBodyBlocConsumer(),
      ),
    );
  }
}

