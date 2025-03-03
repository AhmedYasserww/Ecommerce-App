import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/exceptions.dart';
import 'package:ecommerce_app/core/errors/failures.dart';
import 'package:ecommerce_app/core/services/data_base_service.dart';
import 'package:ecommerce_app/core/services/fire_base_auth_service.dart';
import 'package:ecommerce_app/core/utils/backend_endpoint.dart';
import 'package:ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:ecommerce_app/features/auth/domain/entites/user_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImp implements AuthRepo {
  final FireBaseAuthService fireBaseAuthService;
  final DatabaseService databaseService ;

  AuthRepoImp({required this.databaseService, required this.fireBaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  })
  async {
    User ? user ;
    try {
       user = await fireBaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // store user data
      var userEntity = UserEntity(uId: user.uid, email: email, name: name);
      await addUserData(userEntity: userEntity);

      return right(userEntity);
    } on CustomException catch (e) {
      if (user != null) {
        await fireBaseAuthService.deleteUser();

      }
      return left(ServerFailure(errorMessage: e.message));
    } catch (e) {
      if (user != null) {
        await fireBaseAuthService.deleteUser();
      }
      log('Exception in AuthRepoImp.createUserWithEmailAndPassword: ${e.toString()}');
      return left( ServerFailure(errorMessage: "لقد حدث خطأ. الرجاء المحاولة مرة اخرى"));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({required String email, required String password}) async{
    try {
      var user = await fireBaseAuthService.signInWithEmailAndPassword(email: email, password: password);
      var userEntity = await getUserData(documentId: user.uid);

      return right(userEntity);
    } on CustomException catch (e) {
      return left(ServerFailure(errorMessage: e.message));
    } catch (e) {
      log('Exception in AuthRepoImp.signInWithEmailAndPassword: ${e.toString()}');
      return left( ServerFailure(errorMessage: "لقد حدث خطأ. الرجاء المحاولة مرة اخرى"));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async{
    User ? user ;
    try {
       user = await fireBaseAuthService.signInWithGoogle();
       var userEntity = UserModel.fromFirebaseUser(user);
       var isUserExist = await databaseService.checkIfDataExists(path: BackEndEndpoint.isUserExist, documentId: userEntity.uId);
       if(isUserExist){
         await getUserData(documentId: userEntity.uId);
       }
       else{
         await addUserData(userEntity: userEntity);
       }
      return right(userEntity);
    }  catch (e) {
      if (user != null) {
        await fireBaseAuthService.deleteUser();
      }
      log('Exception in AuthRepoImp.signInWithGoogle: ${e.toString()}');
      return left( ServerFailure(errorMessage: "لقد حدث خطأ. الرجاء المحاولة مرة اخرى"));
    }
  }

 @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async{
    User ? user ;
    try {
       user = await fireBaseAuthService.signInWithFacebook();
       var userEntity = UserModel.fromFirebaseUser(user);
       var isUserExist = await databaseService.checkIfDataExists(path: BackEndEndpoint.isUserExist, documentId: userEntity.uId);
       if(isUserExist){
         await getUserData(documentId: userEntity.uId);
       }
       else{
         await addUserData(userEntity: userEntity);
       }
       return right(userEntity);
    }
     catch (e) {
       if (user != null) {
         await fireBaseAuthService.deleteUser();
       }
      log('Exception in AuthRepoImp.signInWithFacebook: ${e.toString()}');
      return left( ServerFailure(errorMessage: "لقد حدث خطأ. الرجاء المحاولة مرة اخرى"));
    }
  }

  @override
  Future addUserData({required UserEntity userEntity}) async{
     await databaseService.addData(path: BackEndEndpoint.addUserData, data: userEntity.toMap(),
       documentId: userEntity.uId
     );


  }

  @override
  Future<UserEntity> getUserData({required String documentId}) async{
    var data = await databaseService.getData(path: BackEndEndpoint.getUserData, documentId: documentId);
    return UserModel.fromJson(data);
  }

}
