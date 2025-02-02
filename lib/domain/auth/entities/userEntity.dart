// class UserEntity {
//   final String name;
//   final String email;
//   final String password;
//   final String shopName;
//   final String shopAddress;

//   const UserEntity({
//     required this.name,
//     required this.email,
//     required this.password,
//     required this.shopName,
//     required this.shopAddress,
//   });
// }

class UserEntity {
  final String userName;
  final String userEmail;
  final String userPassword;
  final String userPhoneNumber;
  final String shopName;
  final String shopAddress;
  const UserEntity({
    required this.userName,
    required this.userEmail,
    required this.userPassword,
    required this.userPhoneNumber,
    required this.shopName,
    required this.shopAddress,
  });
}
