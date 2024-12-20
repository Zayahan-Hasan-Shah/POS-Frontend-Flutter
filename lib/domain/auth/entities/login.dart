// lib/domain/auth/entities/login_data.dart
class LoginEntity {
  final String email;
  final String password;

  LoginEntity({
    required this.email,
    required this.password,
  });
}