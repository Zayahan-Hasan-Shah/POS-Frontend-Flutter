// import 'package:dartz/dartz.dart';
// import 'package:pos_flutter/core/usecase/usecase.dart';
// import 'package:pos_flutter/data/auth/models/signup.dart';
// import 'package:pos_flutter/domain/auth/repositories/auth.dart';
// import 'package:pos_flutter/serviceLocator.dart';

// class SignupUsecase extends Usecase<Either, Signup> {
//   SignupUsecase(AuthRepository authRepository);

//   Future<Either> call({Signup? params}) async {
//     return await sl<AuthRepository>().signup(params!);
//   }
// }

// import 'package:dartz/dartz.dart';
// import 'package:pos_flutter/core/usecase/usecase.dart';
// import 'package:pos_flutter/data/auth/models/signup.dart';
// import 'package:pos_flutter/domain/auth/repositories/auth.dart';
// import 'package:pos_flutter/core/errors/failure.dart';

// class SignupUsecase extends Usecase<Either<Failure, void>, Signup> {
//   final AuthRepository repository;

//   SignupUsecase(this.repository);

//   @override
//   Future<Either<Failure, void>> call(Signup params) async {
//     return await repository.signup(params);
//   }
// }

// import 'package:dartz/dartz.dart';
// import 'package:pos_flutter/core/usecase/usecase.dart';
// import 'package:pos_flutter/data/auth/models/signup.dart';
// import 'package:pos_flutter/domain/auth/repositories/auth.dart';
// import 'package:pos_flutter/serviceLocator.dart';

// class SignupUsecase extends Usecase<Either, SignupModel> {
//   @override
//   Future<Either> call({SignupModel? signupmodeldata}) async {
//     return await sl<AuthRepository>().signup(signupmodeldata!);
//   }
// }


// class SignupUsecase extends Usecase<Either<Failure, UserEntity>, SignupParams> {
//   final AuthRepository repository;

//   SignupUsecase(this.repository);

//   @override
//   Future<Either<Failure, UserEntity>> call({required SignupParams params}) {
//     return repository.signup(
//       params.userName,
//       params.userEmail,
//       params.userPassword,
//       params.userPhoneNumber,
//       params.shopName,
//       params.shopAddress,
//     );
//   }
// }

// class SignupParams {
//   final String userName;
//   final String userEmail;
//   final String userPassword;
//   final String userPhoneNumber;
//   final String shopName;
//   final String shopAddress;

//   SignupParams(
//     this.userName,
//     this.userEmail,
//     this.userPassword,
//     this.userPhoneNumber,
//     this.shopName,
//     this.shopAddress,
//   );
// }



// lib/domain/auth/usecases/signup.dart
import 'package:dartz/dartz.dart';
import 'package:pos_flutter/core/errors/failure.dart';
import 'package:pos_flutter/core/usecase/usecase.dart';
import 'package:pos_flutter/domain/auth/entities/signup.dart';
import 'package:pos_flutter/domain/auth/repositories/auth.dart';

class Signup extends Usecase<void, SignupEntity> {
  final AuthRepository repository;

  Signup(this.repository);

  @override
  Future<Either<Failure, void>> call({required SignupEntity params}) {
    return repository.signup(params);
  }
}



