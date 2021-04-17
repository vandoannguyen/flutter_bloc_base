import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'base_bloc_event.dart';
import 'base_bloc_state.dart';

abstract class BaseBloc<E extends BaseBlocEvent, S extends BaseBlocState>
    extends Bloc<E, S> {
  Map<String, StreamController> mapStream;
  StreamController<String> mess;
  StreamController<bool> isDialogLoading;

  static final String MESS = "mess";
  static final String SHOW_DIALOG_LOADING = "SHOW_DIALOG_LOADING";

  void initBlocEvent() {
    addBlocEventStream<String>(MESS);
    addBlocEventStream<bool>(
      SHOW_DIALOG_LOADING,
    );
    isDialogLoading = new StreamController();
  }

  BaseBloc(S initialState) : super(initialState) {
    mapStream = new Map();
    initBlocEvent();
  }
  /*
  Thêm sự kiện event trên màn hình
   */
  void addBlocEventStream<T>(String key) {
    print("addBlocEventStream${key.toString()}");
    mapStream.putIfAbsent(key.toString(), () => StreamController<T>());
  }
/*
hàm gọi để lắng nghe sự kiên callBack sang với key là tên sự kiện
 */
  Stream getEventBloc(String key) {
    print("getEventBloc${key.toString()}");
    return mapStream[key.toString()].stream;
  }
/*
hàm gọi để phát ra 1 sự kiên callBack sang với key là tên sự kiện
 */
  Sink getEventBlocSink(String key) {
    print("getEventBlocSink${key.toString()}");
    return mapStream[key.toString()].sink;
  }

  @override
  Future<void> close() {
    mapStream.forEach((key, value) {
      value.close();
    });
    mapStream.clear();
    return super.close();
  }
}
