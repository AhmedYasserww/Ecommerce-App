import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/exceptions.dart';
import 'package:ecommerce_app/core/errors/failures.dart';
import 'package:ecommerce_app/core/services/fire_base_auth_service.dart';
import 'package:ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:ecommerce_app/features/auth/domain/entites/user_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImp implements AuthRepo {
  final FireBaseAuthService fireBaseAuthService;

  AuthRepoImp({required this.fireBaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      var user = await fireBaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(errorMessage: e.message));
    } catch (e) {
      log('Exception in AuthRepoImp.createUserWithEmailAndPassword: ${e.toString()}');
      return left( ServerFailure(errorMessage: "لقد حدث خطأ. الرجاء المحاولة مرة اخرى"));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({required String email, required String password}) async{
    try {
      var user = await fireBaseAuthService.signInWithEmailAndPassword(email: email, password: password);
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(errorMessage: e.message));
    } catch (e) {
      log('Exception in AuthRepoImp.signInWithEmailAndPassword: ${e.toString()}');
      return left( ServerFailure(errorMessage: "لقد حدث خطأ. الرجاء المحاولة مرة اخرى"));
    }
  }
}
