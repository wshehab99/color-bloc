import 'package:color_bloc/data/blooc/color_bloc.dart';
import 'package:color_bloc/data/blooc/color_event.dart';
import 'package:color_bloc/data/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data/blooc/color_state.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc _colorbloc = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
      ),
      body: BlocBuilder<ColorBloc, ColorState>(
        builder: (context, state) => Center(
            child: Column(
          children: [
            Container(
              height: 200,
              color: color1,
            ),
            Container(
              height: 200,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              color: color2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _colorbloc.add(ColorEvent.CHANGE_COLOR);
                    },
                    child: Text('Change Color')),
                SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      _colorbloc.add(ColorEvent.RESET_COLOR);
                    },
                    child: Text('Reset Colors')),
              ],
            )
          ],
        )),
      ),
    );
  }
}
