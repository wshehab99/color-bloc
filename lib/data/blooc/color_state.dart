import 'dart:math';

import 'package:color_bloc/data/constant.dart';

class ColorState {}

class ChangeCoor extends ColorState {
  ChangeCoor.change() {
    color1 = color[Random().nextInt(color.length)];
    color2 = color[Random().nextInt(color.length)];
  }
}

class ResetColor extends ColorState {
  ResetColor.reset() {
    color1 = color[0];
    color2 = color[1];
  }
}
