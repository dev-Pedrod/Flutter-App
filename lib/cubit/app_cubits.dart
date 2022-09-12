import 'package:bloc/bloc.dart';
import 'package:flutter_app/cubit/app_cubit_states.dart';
import 'package:flutter_app/model/data_model.dart';

import '../services/data_service.dart';

class AppCubits extends Cubit<CubitStates> {
  final DataService data;
  late final places;

  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }

  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {
      print(e);
    }
  }

  detailPage(DataModel data) {
    emit(DetailsState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }
}
