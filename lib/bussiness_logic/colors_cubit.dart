import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../colors.dart';

part 'colors_state.dart';

class ColorsCubit extends Cubit<ColorsState> {
  ColorsCubit() : super(ColorsInitial());
  static ColorsCubit get(context) =>BlocProvider.of<ColorsCubit>(context);

  List<Color> colors =[
    lightBrown ,
    darkRed,
    skyBlue,
    darkSkyBlue,
    lightPurple,
  ];
  Color background =skyBlue;

  void selectColor(int index){
    background =colors.elementAt(index);
  emit(ColorsSelectedState());
  }

}
