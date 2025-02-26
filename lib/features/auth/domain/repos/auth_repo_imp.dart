import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failures.dart';
import 'package:ecommerce_app/features/auth/domain/entites/user_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImp implements AuthRepo {
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({required String email, required String password}) {

    throw UnimplementedError();
  }
}