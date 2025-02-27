import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/auth/domain/entites/user_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo;
  Future<void> signInWithEmailAndPassword({required String email, required String password}) async {
    emit(SignInLoading());
    var result = await authRepo.signInWithEmailAndPassword(email: email, password: password);
    result.fold((failure) => emit(
        SignInFailure(errorMessage: failure.errorMessage)),

        (userEntity) => emit(SignInSuccess(userEntity: userEntity)));
  }
}
