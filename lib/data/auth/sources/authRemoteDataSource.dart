// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:pos_flutter/core/constants/apiUrl.dart';
// import 'package:pos_flutter/core/network/dio_client.dart';
// import 'package:pos_flutter/data/auth/models/login.dart';
// import 'package:pos_flutter/data/auth/models/signup.dart';
// import 'package:pos_flutter/serviceLocator.dart';

// abstract class AuthService {
//   Future<Either> signup(Signup params);
//   Future<Either> login(Login params);
// }

// class AuthApiServiceImpl extends AuthService {
//   // login
//   @override
//   Future<Either> login(Login params) async {
//     try {
//       var response = await sl<DioClient>().post(
//         ApiUrl.login,
//         data: params.toMap(),
//       );

//       return Right(response.data);
//     } on DioException catch (e) {
//       // This error is come from server
//       return Left(e.response!.data['message'] ??
//           'An unknown error occurred in data repository login');
//     }
//   }

//   // signup
//   @override
//   Future<Either> signup(Signup params) async {
//     try {
//       var response = await sl<DioClient>().post(
//         ApiUrl.signup,
//         data: params.toMap(),
//       );

//       return Right(response.data);
//     } on DioException catch (e) {
//       return Left(e.response!.data['message'] ??
//           'An unknown error occurred in data repository signup');
//     }
//   }
// }

// import 'package:dio/dio.dart';
// import 'package:pos_flutter/data/auth/models/userModel.dart';

// abstract class AuthRemoteDataSource {
//   Future<void> signup(UserModel user);
// }

// class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
//   final Dio client;

//   AuthRemoteDataSourceImpl(this.client);

//   @override
//   Future<void> signup(UserModel user) async {
//     final response = await client.post(
//       'https://your-api-url/signup',
//       data: user.toJson(),
//     );

//     if (response.statusCode != 200) {
//       throw Exception('Signup failed');
//     }
//   }
// }

// import 'package:dio/dio.dart';

// class AuthApiService {
//   final Dio dio;

//   AuthApiService(this.dio);

//   Future<Map<String, dynamic>> login(String email, String password) async {
//     final response = await dio.post(
//       '/login',
//       data: {'email': email, 'password': password},
//     );
//     return response.data;
//   }

//   Future<Map<String, dynamic>> signup(
//     String userName,
//     String userEmail,
//     String userPassword,
//     String userPhoneNumber,
//     String shopName,
//     String shopAddress,
//   ) async {
//     final response = await dio.post(
//       '/signup',
//       data: {
//         'userName': userName,
//         'userEmail': userEmail,
//         'userPassword': userPassword,
//         'userPhoneNumber': userPhoneNumber,
//         'shopName': shopName,
//         'shopAddress': shopAddress,
//       },
//     );
//     return response.data;
//   }
// }

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pos_flutter/core/constants/apiUrl.dart';
import 'package:pos_flutter/core/network/dio_client.dart';
import 'package:pos_flutter/data/auth/models/login.dart';
import 'package:pos_flutter/data/auth/models/signup.dart';
import 'package:pos_flutter/serviceLocator.dart';

abstract class AuthApiService {

  Future<Either> signup(SignupModel signupmodeldata);
  Future<Either> login(LoginModel loginmodeldata);
}

class AuthApiServiceImpl extends AuthApiService {


  @override
  Future<Either> login(LoginModel loginmodeldata) async {
    try {
      var response = await sl<DioClient>().post(
        ApiUrl.login,
        data: loginmodeldata.toMap(),
      );

      return Right(response.data);
    } on DioException catch (e) {
      // This error is come from server
      return Left(e.response!.data['message'] ??
          'An unknown error occurred in data repository signin');
    }
  }

  @override
  Future<Either> signup(SignupModel signupmodeldata) async {
    try {
      var response = await sl<DioClient>().post(
        ApiUrl.signup,
        data: signupmodeldata.toMap(),
      );
      return Right(response.data);
    } on DioException catch (error) {
      // This error is come from server
      return Left(error.response!.data['message'] ??
          'An unknown error occurred in data repository signup');
    }
  }
}
