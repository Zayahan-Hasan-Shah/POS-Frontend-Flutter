import 'package:pos_flutter/domain/auth/entities/userEntity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required String userName,
    required String userEmail,
    required String userPassword,
    required String userPhoneNumber,
    required String shopName,
    required String shopAddress,
  }) : super(
          userName: userName,
          userEmail: userEmail,
          userPassword: userPassword,
          userPhoneNumber: userPhoneNumber,
          shopName: shopName,
          shopAddress: shopAddress,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userName: json['name'],
      userEmail: json['email'],
      userPassword: json['password'],
      userPhoneNumber: json['userPhoneNumber'],
      shopName: json['shopName'],
      shopAddress: json['shopAddress'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'userEmail': userEmail,
      'userPassword': userPassword,
      'userPhoneNumber': userPhoneNumber,
      'shopName': shopName,
      'shopAddress': shopAddress,
    };
  }
}
