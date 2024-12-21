// // part of 'home_bloc.dart';

// // @immutable
// // sealed class HomeState {}

// // final class HomeInitial extends HomeState {}

// // lib/presentation/home/bloc/home_state.dart

// import 'package:equatable/equatable.dart';

// abstract class HomeState extends Equatable {
//   const HomeState();

//   @override
//   List<Object> get props => [];
// }

// class HomeInitial extends HomeState {}

// class HomeLoading extends HomeState {}

// class HomeLoaded extends HomeState {
//   // Add the data you want to display on the HomeScreen
//   final String data;

//   const HomeLoaded(this.data);

//   @override
//   List<Object> get props => [data];
// }

// class HomeError extends HomeState {
//   final String message;

//   const HomeError(this.message);

//   @override
//   List<Object> get props => [message];
// }


// lib/presentation/home/bloc/home_state.dart

import 'package:equatable/equatable.dart';
import 'package:pos_flutter/domain/home/entities/home.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final HomeEntity homeEntity;

  const HomeLoaded(this.homeEntity);

  @override
  List<Object> get props => [homeEntity];
}

class HomeError extends HomeState {
  final String message;

  const HomeError(this.message);

  @override
  List<Object> get props => [message];
}