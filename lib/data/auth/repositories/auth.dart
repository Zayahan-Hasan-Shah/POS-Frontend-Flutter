// import 'package:dartz/dartz.dart';
// import 'package:pos_flutter/data/auth/models/login.dart';
// import 'package:pos_flutter/data/auth/models/signup.dart';
// import 'package:pos_flutter/data/auth/sources/authRemoteDataSource.dart';
// import 'package:pos_flutter/domain/auth/repositories/auth.dart';
// import 'package:pos_flutter/serviceLocator.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class AuthRepositoryImpl extends AuthRepository {
//   @override
//   Future<Either> signup(Signup params) async {
//     var data = await sl<AuthService>().signup(params);
//     return data.fold((error) {
//       return Left(error);
//     }, (data) async {
//       final SharedPreferences sharedPreferences =
//           await SharedPreferences.getInstance();
//       sharedPreferences.setString('token', data['user']['token']);
//       return Right(data);
//     });
//   }

//   @override
//   Future<Either> login(Login params) async {
//     var data = await sl<AuthService>().login(params);
//     return data.fold((error) {
//       return Left(error);
//     }, (data) async {
//       final SharedPreferences sharedPreferences =
//           await SharedPreferences.getInstance();
//       sharedPreferences.setString('token', data['user']['token']);
//       return Right(data);
//     });
//   }

//   @override
//   Future<bool> isLoggedIn() async {
//     final SharedPreferences sharedPreferences =
//         await SharedPreferences.getInstance();
//     var token = sharedPreferences.getString('token');
//     if (token == null) {
//       return false;
//     } else {
//       return true;
//     }
//   }
// }

// import 'package:dartz/dartz.dart';
// import 'package:pos_flutter/core/errors/failure.dart';
// import 'package:pos_flutter/data/auth/models/userModel.dart';
// import 'package:pos_flutter/data/auth/sources/authRemoteDataSource.dart';
// import 'package:pos_flutter/domain/auth/entities/userEntity.dart';
// import 'package:pos_flutter/domain/auth/repositories/auth.dart';

// class AuthRepositoryImpl implements AuthRepository {
//   final AuthApiService apiService;

//   AuthRepositoryImpl(this.apiService);

//   @override
//   Future<Either<Failure, UserEntity>> login(
//       String userEmail, String userPassword) async {
//     try {
//       final response = await apiService.login(userEmail, userPassword);
//       return Right(UserModel.fromJson(response));
//     } catch (e) {
//       return Left(ServerFailure(message: e.toString()));
//     }
//   }

//   @override
//   Future<Either<Failure, UserEntity>> signup(
//     String userName,
//     String userEmail,
//     String userPassword,
//     String userPhoneNumber,
//     String shopName,
//     String shopAddress,
//   ) async {
//     try {
//       final response = await apiService.signup(
//         userName,
//         userEmail,
//         userPassword,
//         userPhoneNumber,
//         shopName,
//         shopAddress,
//       );
//       return Right(UserModel.fromJson(response));
//     } catch (e) {
//       return Left(ServerFailure(message: e.toString()));
//     }
//   }
// }

// import 'package:dartz/dartz.dart';
// import 'package:pos_flutter/data/auth/models/login.dart';
// import 'package:pos_flutter/data/auth/models/signup.dart';
// import 'package:pos_flutter/data/auth/sources/authRemoteDataSource.dart';
// import 'package:pos_flutter/domain/auth/repositories/auth.dart';
// import 'package:pos_flutter/serviceLocator.dart';
// import 'package:shared_preferences/shared_preferences.dart';


// class AuthRepositoryImpl extends AuthRepository {

//   // login
//   @override
//   Future<Either> login(LoginModel loginmodeldata) async {
//     var data = await sl<AuthApiService>().login(loginmodeldata);
//     return data.fold((error) {
//       return Left(error);
//     }, (data) async {
//       final SharedPreferences sharedPreferences =
//           await SharedPreferences.getInstance();
//       sharedPreferences.setString('token', data['user']['token']);
//       return Right(data);
//     });
//   }

//   // signup
//   @override
//   Future<Either> signup(SignupModel signupmodeldata) async {
//     var data = await sl<AuthApiService>().signup(signupmodeldata);
//     return data.fold((error) {
//       return Left(error);
//     }, (data) async {
//       final SharedPreferences sharedPreferences =
//           await SharedPreferences.getInstance();
//       sharedPreferences.setString('token', data['user']['token']);
//       return Right(data);
//     });
//   }

// }


// lib/data/auth/repositories/auth_repository_impl.dart
import 'package:dartz/dartz.dart';
import 'package:pos_flutter/core/errors/failure.dart';
import 'package:pos_flutter/domain/auth/entities/login.dart';
import 'package:pos_flutter/domain/auth/entities/signup.dart';
import 'package:pos_flutter/domain/auth/repositories/auth.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<Either<Failure, void>> signup(SignupEntity signupData) {
    // Implement the actual signup logic here, e.g., making an API call
    // For now, let's assume the signup is always successful
    return Future.value(const Right(null));
  }

  @override
  Future<Either<Failure, void>> login(LoginEntity loginData) {
    // Implement the actual login logic here, e.g., making an API call
    // For now, let's assume the login is always successful
    return Future.value(Right(null));
  }
}
