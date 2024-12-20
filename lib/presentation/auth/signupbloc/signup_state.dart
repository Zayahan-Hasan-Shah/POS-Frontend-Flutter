// import 'package:equatable/equatable.dart';

// abstract class SignupState extends Equatable {
//   @override
//   List<Object?> get props => [];
// }

// class SignupInitial extends SignupState {}

// class SignupLoading extends SignupState {}

// class SignupSuccess extends SignupState {}

// class SignupError extends SignupState {
//   final String errorMessage;

//   SignupError(this.errorMessage);

//   @override
//   List<Object?> get props => [errorMessage];
// }


// lib/presentation/auth/bloc/signup_state.dart
part of 'signup_bloc.dart';

abstract class SignupState extends Equatable {
  const SignupState();

  @override
  List<Object> get props => [];
}

class SignupInitial extends SignupState {}

class SignupLoading extends SignupState {}

class SignupSuccess extends SignupState {}

class SignupError extends SignupState {
  final String errorMessage;

  const SignupError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}