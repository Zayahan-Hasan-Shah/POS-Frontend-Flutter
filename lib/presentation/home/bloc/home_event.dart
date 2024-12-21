// part of 'home_bloc.dart';

// @immutable
// sealed class HomeEvent {}

// lib/presentation/home/bloc/home_event.dart

import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class LoadHomeData extends HomeEvent {}
