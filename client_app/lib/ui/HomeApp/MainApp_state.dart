// ignore_for_file: must_be_immutable

import 'package:client_app/models/enum/loadstatus.dart';
import 'package:equatable/equatable.dart';

class MainAppState extends Equatable {
  LoadStatus? loadStatus;
  int? index;

  MainAppState({
    this.loadStatus = LoadStatus.initial,
    this.index = 0,
  });
  @override
  List<Object?> get props => [loadStatus, index];
  MainAppState copyWith({LoadStatus? loadStatus, int? index}) {
    return MainAppState(
      loadStatus: loadStatus ?? this.loadStatus,
      index: index ?? this.index,
    );
  }
}
