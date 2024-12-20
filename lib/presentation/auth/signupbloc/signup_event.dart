// import 'package:equatable/equatable.dart';

// abstract class SignupEvent extends Equatable {
//   @override
//   List<Object?> get props => [];
// }

// class SignupSubmitted extends SignupEvent {
//   final String name;
//   final String email;
//   final String password;
//   final String confirmPassword;
//   final String shopName;
//   final String shopAddress;

//   SignupSubmitted({
//     required this.name,
//     required this.email,
//     required this.password,
//     required this.confirmPassword,
//     required this.shopName,
//     required this.shopAddress,
//   });

//   @override
//   List<Object?> get props =>
//       [name, email, password, confirmPassword, shopName, shopAddress];
// }


// lib/presentation/auth/bloc/signup_event.dart
part of 'signup_bloc.dart';

abstract class SignupEvent extends Equatable {
  const SignupEvent();

  @override
  List<Object> get props => [];
}

class SignupSubmitted extends SignupEvent {
  final String name;
  final String email;
  final String password;
  final String confirmPassword;
  final String shopName;
  final String shopAddress;

  const SignupSubmitted({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.shopName,
    required this.shopAddress,
  });

  @override
  List<Object> get props => [name, email, password, confirmPassword, shopName, shopAddress];
}