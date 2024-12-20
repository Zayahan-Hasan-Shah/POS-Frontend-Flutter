// lib/domain/auth/entities/signup_data.dart
class SignupEntity {
  final String name;
  final String email;
  final String password;
  final String confirmPassword;
  final String shopName;
  final String shopAddress;

  SignupEntity({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.shopName,
    required this.shopAddress,
  });
}