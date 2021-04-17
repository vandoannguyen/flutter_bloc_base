import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState());

  static AppBloc of(context) {
    return BlocProvider.of<AppBloc>(context);
  }

  @override
  Stream<AppState> mapEventToState(AppEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
