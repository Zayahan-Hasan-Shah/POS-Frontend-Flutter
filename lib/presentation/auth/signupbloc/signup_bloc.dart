// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'signup_event.dart';
// import 'signup_state.dart';

// class SignupBloc extends Bloc<SignupEvent, SignupState> {
//   SignupBloc() : super(SignupInitial()) {
//     on<SignupSubmitted>(_onSignupSubmitted);
//   }

//   Future<void> _onSignupSubmitted(
//       SignupSubmitted event, Emitter<SignupState> emit) async {
//     emit(SignupLoading());
//     await Future.delayed(const Duration(seconds: 2)); // Simulating network delay

//     // Simulate signup success/failure
//     if (event.password != event.confirmPassword) {
//       emit(SignupError("Passwords do not match"));
//     } else {
//       emit(SignupSuccess());
//     }
//   }
// }


// lib/presentation/auth/bloc/signup_bloc.dart
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_flutter/domain/auth/entities/signup.dart';
import 'package:pos_flutter/domain/auth/usecases/signup.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final Signup signup;

  SignupBloc({required this.signup}) : super(SignupInitial()) {
    on<SignupSubmitted>((event, emit) async {
      emit(SignupLoading());
      final failureOrSuccess = await signup(params: SignupEntity(
        name: event.name,
        email: event.email,
        password: event.password,
        confirmPassword: event.confirmPassword,
        shopName: event.shopName,
        shopAddress: event.shopAddress,
      ));
      emit(failureOrSuccess.fold(
        (failure) => const SignupError(errorMessage: 'Signup failed'),
        (_) => SignupSuccess(),
      ));
    });
  }
}