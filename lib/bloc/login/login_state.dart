import 'package:init_flutter_app_bloc/base/bloc/base_bloc_state.dart';

class LoginState extends BaseBlocState {
  // save data and state of login screen
  int count = 0;

  LoginState copyWith({int count}) {
    this.count = count ?? this.count;
    return this;
  }

  LoginState({this.count});

  LoginState increase(int count) {
    return copyWith(count: count);
  }
}
