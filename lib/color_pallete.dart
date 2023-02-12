import 'package:color_pallete/bussiness_logic/colors_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorsPalette extends StatefulWidget {
  const ColorsPalette({Key? key}) : super(key: key);

  @override
  State<ColorsPalette> createState() => _ColorsPaletteState();
}

class _ColorsPaletteState extends State<ColorsPalette> {
  late ColorsCubit cubit;

  @override
  void initState() {
    cubit = ColorsCubit.get(context);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BlocBuilder<ColorsCubit, ColorsState>(
            builder: (context, state) {
              return Ink(
                color: cubit.background,
              );
            },
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: BlocBuilder<ColorsCubit, ColorsState>(
                    builder: (context, state) {
                      return MaterialButton(
                          color: cubit.colors.elementAt(0),
                          onPressed: () {
                            cubit.selectColor(0);
                          },
                          child: Visibility(
                              visible:
                              cubit.background == cubit.colors.elementAt(0),
                              child: Icon(
                                Icons.check,
                                color: Colors.green,
                              )));
                    },
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 3,
                  child: BlocBuilder<ColorsCubit, ColorsState>(
                    builder: (context, state) {
                      return MaterialButton(
                          color: cubit.colors.elementAt(1),
                          onPressed: () {
                            cubit.selectColor(1);
                          },
                          child: Visibility(
                              visible:
                              cubit.background == cubit.colors.elementAt(1),
                              child: Icon(
                                Icons.check,
                                color: Colors.green,
                              )));
                    },
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 3,
                  child: BlocBuilder<ColorsCubit, ColorsState>(
                    builder: (context, state) {
                      return MaterialButton(
                          color: cubit.colors.elementAt(2),
                          onPressed: () {
                            cubit.selectColor(2);
                          },
                          child: Visibility(
                              visible:
                              cubit.background == cubit.colors.elementAt(2),
                              child: Icon(
                                Icons.check,
                                color: Colors.green,
                              )));
                    },
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 3,
                  child: BlocBuilder<ColorsCubit, ColorsState>(
                    builder: (context, state) {
                      return MaterialButton(
                          color: cubit.colors.elementAt(3),
                          onPressed: () {
                            cubit.selectColor(3);
                          },
                          child: Visibility(
                              visible:
                              cubit.background == cubit.colors.elementAt(3),
                              child: Icon(
                                Icons.check,
                                color: Colors.green,
                              )));
                    },
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 3,
                  child: BlocBuilder<ColorsCubit, ColorsState>(
                    builder: (context, state) {
                      return MaterialButton(
                          color: cubit.colors.elementAt(4),
                          onPressed: () {
                            cubit.selectColor(4);
                          },
                          child: Visibility(
                              visible:
                              cubit.background == cubit.colors.elementAt(4),
                              child: Icon(
                                Icons.check,
                                color: Colors.green,
                              )));
                    },
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
