import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:init_flutter_app_bloc/base/bloc/base_bloc.dart';
import 'package:init_flutter_app_bloc/bloc/login/login_state.dart';

import 'login_event.dart';

class LoginBloc extends BaseBloc<LoginEvent, LoginState> {
  var context;

  LoginBloc(LoginState initialState) : super(initialState);

  static LoginBloc of(context) {
    return BlocProvider.of<LoginBloc>(context);
  }

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginStart) {
    } else if (event is LoginSuccess) {
    } else if (event is LoginFail) {
    } else if (event is LoginIncrease) {
      getEventBlocSink(BaseBloc.SHOW_DIALOG_LOADING).add(true);
      yield this.state.increase(event.count);
    }
  }
}
