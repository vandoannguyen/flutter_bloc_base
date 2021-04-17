import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:init_flutter_app_bloc/base/screen/base_screen_state.dart';
import 'package:init_flutter_app_bloc/bloc/login/bloc.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState
    extends BaseScreenState<LoginScreen, LoginState, LoginEvent, LoginBloc> {
  @override
  LoginBloc initBloc(context) {
    return LoginBloc(LoginState(count: 1));
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<LoginBloc, LoginState>(
          builder: (ctx, state) {
            return Center(
              child: GestureDetector(
                onTap: () {
                  bloc.add(LoginIncrease(new Random().nextInt(100)));
                },
                child: Container(
                  child: Text("Click ME ${state.count}"),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
  @override
  void screenListener() {
    // TODO: implement screenListener
    super.screenListener();

  }
}
