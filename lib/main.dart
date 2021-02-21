import 'package:flutter/material.dart';
import 'package:pelisapp/cubit/movie_cubit.dart';
import 'package:pelisapp/dashboard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MovieCubit(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: DashboardPages(),
      ),
    );
  }
}
