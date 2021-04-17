import 'dart:async';

import 'package:init_flutter_app_bloc/provider/api_provider.dart';

abstract class IAuthRepository{
  Future authlogin();
  Future authRegister(String data);
  Future authUnRegister(String data);
}
class AuthRepository implements IAuthRepository{
  @override
  Future authRegister(String data) {
    // TODO: implement authRegister
    throw UnimplementedError();
  }

  @override
  Future authUnRegister(String data) {
    // TODO: implement authUnRegister
    throw UnimplementedError();
  }

  @override
  Future authlogin() {
    // TODO: implement authlogin
    throw UnimplementedError();
  }

}