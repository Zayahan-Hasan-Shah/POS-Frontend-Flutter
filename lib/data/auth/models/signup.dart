class SignupModel {
  final String userName;
  final String shopName;
  final String shopAddress;
  final String userEmail;
  final String userPassword;
  final String userPhoneNumber;

  SignupModel({
    required this.userName,
    required this.shopName,
    required this.shopAddress,
    required this.userEmail,
    required this.userPassword,
    required this.userPhoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userName': userName,
      'shopName': shopName,
      'shopAddress': shopAddress,
      'userEmail': userEmail,
      'userPassword': userPassword,
      'userPhoneNumber': userPhoneNumber,
    };
  }
}
