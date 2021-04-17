import 'package:init_flutter_app_bloc/repositories/auth_repository.dart';

abstract class IAppDataRepository extends IAuthRepository {}

class AppDataRepositoryImpl implements IAppDataRepository {
  static AppDataRepositoryImpl _instance;
  IAuthRepository authRepository;

  AppDataRepositoryImpl({this.authRepository});

  static AppDataRepositoryImpl getInstance() {
    return _instance ?? AppDataRepositoryImpl(authRepository: AuthRepository());
  }

  @override
  Future authRegister(String data) {
    // TODO: implement authRegister
    return authRepository.authRegister(data);
  }

  @override
  Future authUnRegister(String data) {
    // TODO: implement authUnRegister
    return authRepository.authUnRegister(data);
  }

  @override
  Future authlogin() {
    // TODO: implement authlogin
    return authRepository.authlogin();
  }
}
