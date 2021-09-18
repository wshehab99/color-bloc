import 'package:bloc/bloc.dart';
import 'package:color_bloc/data/blooc/color_bloc.dart';
import 'package:color_bloc/data/blooc/color_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider(
        create: (context) => ColorBloc(
          ResetColor.reset(),
        ),
        child: MyHomePage(),
      ),
    );
  }
}
