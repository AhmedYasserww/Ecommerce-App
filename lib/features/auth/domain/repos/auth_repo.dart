import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failures.dart';
import 'package:ecommerce_app/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure,UserEntity>>createUserWithEmailAndPassword({required String email, required String password,required String name});
  Future<Either<Failure,UserEntity>>signInWithEmailAndPassword({required String email, required String password});
}