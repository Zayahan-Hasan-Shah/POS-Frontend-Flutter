// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';

// part 'login_event.dart';
// part 'login_state.dart';

// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   LoginBloc() : super(LoginInitial()) {
//     on<LoginEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }


// lib/presentation/auth/bloc/login_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pos_flutter/domain/auth/entities/login.dart';
import 'package:pos_flutter/domain/auth/usecases/login.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final Login login;

  LoginBloc({required this.login}) : super(LoginInitial()) {
    on<LoginSubmitted>((event, emit) async {
      emit(LoginLoading());
      final failureOrSuccess = await login(params: LoginEntity(
        email: event.email,
        password: event.password,
      ));
      emit(failureOrSuccess.fold(
        (failure) => LoginError(errorMessage: 'Login failed'),
        (_) => LoginSuccess(),
      ));
    });
  }
}