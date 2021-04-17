import 'package:init_flutter_app_bloc/base/bloc/base_bloc_event.dart';

class LoginEvent extends BaseBlocEvent {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoginStart extends LoginEvent {
  final String email;
  final String password;
  final bool remember;

  LoginStart({this.email, this.password, this.remember});

  @override
  List<Object> get props => [email, password, remember];
}

class LoginSuccess extends LoginEvent {}

class ChangeRememberEvent extends LoginEvent {
  final bool remember;
  ChangeRememberEvent({this.remember});
}

class LoginFail extends LoginEvent {
  final String message;

  LoginFail(this.message);
}
class LoginIncrease extends LoginEvent{
  int count ;

  LoginIncrease(this.count);
}
