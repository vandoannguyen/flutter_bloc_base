import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:init_flutter_app_bloc/base/bloc/base_bloc.dart';
import 'package:init_flutter_app_bloc/base/bloc/base_bloc_event.dart';
import 'package:init_flutter_app_bloc/base/bloc/base_bloc_state.dart';

abstract class BaseScreenState<
    W extends StatefulWidget,
    S extends BaseBlocState,
    E extends BaseBlocEvent,
    B extends BaseBloc<E, S>> extends State<W> {
  B bloc;

  @override
  Widget build(BuildContext context) {
    this.bloc = initBloc(context);
    screenListener();
    return BlocProvider<B>(create: (ctx) => bloc, child: buildScreen(context));
  }

  B initBloc(context);

  void screenListener() {
    bloc.getEventBloc(BaseBloc.SHOW_DIALOG_LOADING).listen((event) {
      print("ok vaof ddaay");
      if (event) {
        showDialog(
            context: context,
            builder: (ctx) => Dialog(
                  child: Container(
                    color: Colors.white,
                    height: 80,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        CircularProgressIndicator(),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(child: Text("Loading...."))
                      ],
                    ),
                  ),
                ));
      } else {
        Navigator.pop(context);
      }
    });
  }

  Widget buildScreen(BuildContext context);

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    if (bloc != null) bloc.close();
  }
}
