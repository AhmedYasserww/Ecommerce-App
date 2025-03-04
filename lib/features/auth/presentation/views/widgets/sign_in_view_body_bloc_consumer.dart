import 'package:ecommerce_app/core/helper_functions/build_error_bar.dart';
import 'package:ecommerce_app/core/services/get_it_service.dart';
import 'package:ecommerce_app/core/widgets/custom_progress_hud.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:ecommerce_app/features/auth/presentation/manager/sign_in_cubit/sign_in_cubit.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/sign_in_view_body.dart';
import 'package:ecommerce_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SignInViewBodyBlocConsumer extends StatelessWidget {
  const SignInViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt.get<AuthRepo>()),
        child: BlocConsumer<SignInCubit,SignInState>(
          listener: (context,state){
if(state is SignInFailure){
  buildErrorBar(context, state.errorMessage);
}
if(state is SignInSuccess){
 Navigator.of(context).pushNamed(HomeView.routeName);
}
    },
          builder: (context,state) {
            {
              return CustomModalProgressHud(
                isLoading: state is SignInLoading ? true:false,
                  child: const SignInViewBody());
            }
          }
        )
        );
  }
}
