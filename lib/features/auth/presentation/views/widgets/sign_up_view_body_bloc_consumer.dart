import 'package:ecommerce_app/core/helper_functions/build_error_bar.dart';
import 'package:ecommerce_app/core/widgets/custom_progress_hud.dart';
import 'package:ecommerce_app/features/auth/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SignUpViewBodyBlocConsumer extends StatelessWidget {
  const SignUpViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit,SignUpState>(
        listener: (context,state){

if(state is SignUpFailure){
  buildErrorBar(context, state.errorMessage);
}
else if(state is SignUpSuccess){
  Navigator.pop(context);
}
        },
        builder: (context,state) {
          return CustomModalProgressHud(
              isLoading: state is SignUpLoading ? true:false,
          child: const SignUpViewBody());
        }
    );
  }


}
