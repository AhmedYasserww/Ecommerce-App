import 'dart:developer';

import 'package:ecommerce_app/core/errors/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireBaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      { required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
          'Exception in firebase auth service.createUserWithEmailAndPassword: ${e
              .toString()} and code: ${e.code}');
      if (e.code == 'weak-password') {
        throw CustomException(message: 'الرقم السرى ضعيف جدا');
      }
      else if (e.code == 'network-request-failed') {
        throw CustomException(
            message: 'تأكد من اتصالك بالنترنت وأعد المحاوله مرة اخرى');
      }
      else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'لقد قمت بالتسجيل مسبقا بهذا البريد الالكترونى. الرجاء تسجيل الدخول');
      }
      else {
        throw CustomException(
            message: 'لقد حدث خطأ. الرجاء المحاولة مرة اخرى');
      }
    } catch (e) {
      log(
          'Exception in firebase auth service.createUserWithEmailAndPassword: ${e
              .toString()}');
      throw CustomException(message: 'لقد حدث خطأ. الرجاء المحاولة لاحقا');
    }
  }

Future<User> signInWithEmailAndPassword({required String email, required String password}) async {
  try {
    final credential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return credential.user!;
  } on FirebaseAuthException catch (e) {
    log(
        'Exception in firebase auth service.signInWithEmailAndPassword: ${e
            .toString()} and code: ${e.code}');
    if (e.code == 'user-not-found') {
      throw CustomException(message: 'لا يوجد حساب بهذا البريد الالكترونى');
    }
    else if (e.code == 'wrong-password') {
      throw CustomException(message: 'الرقم السرى غير صحيح');
    }
    else if (e.code == 'network-request-failed') {
      throw CustomException(
          message: 'تأكد من اتصالك بالنترنت وأعد المحاوله مرة اخرى');
    }
    else if (e.code == 'invalid-credential') {
      throw CustomException(message: 'البريد الإلكتروني أو كلمة المرور غير صحيحة');
    }
    else {
      throw CustomException(
          message: 'لقد حدث خطأ. الرجاء المحاولة مرة اخرى');
    }
  } catch (e) {
    log(
        'Exception in firebase auth service.signInWithEmailAndPassword: ${e
            .toString()}');
    throw CustomException(message: 'لقد حدث خطأ. الرجاء المحاولة لاحقا');
  }

  }

}