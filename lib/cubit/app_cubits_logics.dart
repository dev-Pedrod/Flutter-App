// libs
import 'package:flutter/material.dart';

// cubits
import 'package:flutter_app/cubit/app_cubit_states.dart';
import 'package:flutter_app/cubit/app_cubits.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// pages
import '../pages/navpages/main_pages.dart';
import 'package:flutter_app/pages/details_pages.dart';
import 'package:flutter_app/pages/welcome_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state) {
          if (state is WelcomeState) {
            return const WelcomePage();
          }
          if (state is LoadedState) {
            return const MainPage();
          }
          if (state is DetailsState) {
            return const DetailPage();
          }
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
