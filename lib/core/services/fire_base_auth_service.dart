import 'dart:developer';

import 'package:ecommerce_app/core/errors/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }
  Future<User> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

    // Once signed in, return the UserCredential
    return (await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential)).user!;
  }

  Future <void> deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }
  bool iSLoggedIn() => FirebaseAuth.instance.currentUser != null;
}