
import 'package:color_pallete/bussiness_logic/colors_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'color_pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
     providers: [
       BlocProvider<ColorsCubit>(create:(context)
       =>ColorsCubit(),
       )
     ],
      child: MaterialApp(

        home: ColorsPalette(),
      ),
    );
  }
}

