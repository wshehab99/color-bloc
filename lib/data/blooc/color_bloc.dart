import 'package:bloc/bloc.dart';
import 'package:color_bloc/data/blooc/color_event.dart';
import 'package:color_bloc/data/blooc/color_state.dart';
import 'package:color_bloc/data/constant.dart';
import 'package:flutter/material.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc(ColorState initialState) : super(initialState);

  @override
  Stream<ColorState> mapEventToState(ColorEvent event) async* {
    switch (event) {
      case ColorEvent.CHANGE_COLOR:
        yield ChangeCoor.change();
        break;
      case ColorEvent.RESET_COLOR:
        yield ResetColor.reset();
        break;
    }
  }
}
