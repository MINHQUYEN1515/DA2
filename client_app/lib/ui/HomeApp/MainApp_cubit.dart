import 'package:client_app/models/enum/loadstatus.dart';
import 'package:client_app/ui/HomeApp/MainApp_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainAppCubit extends Cubit<MainAppState> {
  MainAppCubit() : super(MainAppState());
  Future<void> chooseScreen(int value) async {
    emit(state.copyWith(loadStatus: LoadStatus.loading));
    try {
      if (value == 0) {
        emit(state.copyWith(index: value, loadStatus: LoadStatus.success));
      } else {
        emit(state.copyWith(index: value, loadStatus: LoadStatus.success));
      }
    } catch (e) {
      emit(state.copyWith(
        loadStatus: LoadStatus.failure,
      ));
    }
  }

  // Future<void> changeScreen(int value) async {
  //   if (value == 0) {
  //     emit(state.copyWith(screen: 160, loadStatus: LoadStatus.success));
  //   } else {
  //     emit(state.copyWith, loadStatus: LoadStatus.failure));
  //   }
  // }
}
