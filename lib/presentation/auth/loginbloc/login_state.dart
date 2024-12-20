// part of 'login_bloc.dart';

// @immutable
// sealed class LoginState {}

// final class LoginInitial extends LoginState {}

// lib/presentation/auth/bloc/login_state.dart
part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginError extends LoginState {
  final String errorMessage;

  const LoginError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
