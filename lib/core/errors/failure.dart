// lib/core/errors/failure.dart

import 'package:equatable/equatable.dart';

/// Abstract class to represent failures.
abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  @override
  List<Object?> get props => [message];
}

/// General failure for unknown errors.
class GeneralFailure extends Failure {
  const GeneralFailure(String message) : super(message);
}

/// Failure for network-related issues.
class NetworkFailure extends Failure {
  const NetworkFailure(String message) : super(message);
}

/// Failure for validation errors.
class ValidationFailure extends Failure {
  const ValidationFailure(String message) : super(message);
}

/// Failure for server-related issues.
class ServerFailure extends Failure {
  const ServerFailure({required String message}) : super(message);
}
