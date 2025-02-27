import 'package:ecommerce_app/core/services/fire_base_auth_service.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo_imp.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FireBaseAuthService>(FireBaseAuthService());
  getIt.registerSingleton<AuthRepo>(AuthRepoImp(fireBaseAuthService:getIt<FireBaseAuthService>()));

}