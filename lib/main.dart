import 'package:e7twa2/allChats/view.dart';
import 'package:e7twa2/reportsPerceptions/view.dart';
import 'package:e7twa2/signIn/bloc/cubit.dart';
import 'package:e7twa2/signUp/bloc/cubit.dart';
import 'package:e7twa2/vaCode/bloc/cubit.dart';
import 'package:e7twa2/welcome/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'fiendDoctor/view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=>LoginControllerCubit()),
        BlocProvider(create: (_)=>SignUpControllerCubit()),
        BlocProvider(create: (_)=>VaControllerCubit()),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeView(),
      ),
    );
  }
}