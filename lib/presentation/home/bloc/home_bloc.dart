// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';

// part 'home_event.dart';
// part 'home_state.dart';

// class HomeBloc extends Bloc<HomeEvent, HomeState> {
//   HomeBloc() : super(HomeInitial()) {
//     on<HomeEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }

// lib/presentation/home/bloc/home_bloc.dart

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_flutter/domain/home/usecases/home.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FetchHomeData fetchHomeData;
  HomeBloc(this.fetchHomeData) : super(HomeInitial()) {
    on<LoadHomeData>(_onLoadHomeData);
  }

  void _onLoadHomeData(LoadHomeData event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
       final homeEntity = await fetchHomeData();
      emit(HomeLoaded(homeEntity));
    } catch (e) {
      emit(HomeError("Failed to load home data"));
    }
  }
}
