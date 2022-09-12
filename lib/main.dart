import 'package:flutter/material.dart';
import 'package:flutter_app/cubit/app_cubits_logics.dart';
import 'package:flutter_app/services/data_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app/cubit/app_cubits.dart';
import 'package:flutter_app/pages/details_pages.dart';
import 'package:flutter_app/pages/navpages/main_pages.dart';
import 'package:flutter_app/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider<AppCubits>(
          create: (context) => AppCubits(
            data: DataService(),
          ),
          child: const AppCubitLogics(),
        ));
  }
}
