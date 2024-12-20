// import 'package:dartz/dartz.dart';
// import 'package:pos_flutter/data/auth/models/login.dart';
// import 'package:pos_flutter/domain/auth/repositories/auth.dart';
// import 'package:pos_flutter/serviceLocator.dart';
// import 'package:pos_flutter/core/usecase/usecase.dart';

// class LoginUsecase extends Usecase<Either, LoginUsecase> {
//   @override
//   Future<Either> call({required LoginModel loginmodeldata}) async {
//     return await sl<AuthRepository>().login(loginmodeldata);
//   }
// }


// lib/domain/auth/usecases/login.dart
import 'package:dartz/dartz.dart';
import 'package:pos_flutter/core/errors/failure.dart';
import 'package:pos_flutter/core/usecase/usecase.dart';
import 'package:pos_flutter/domain/auth/entities/login.dart';
import 'package:pos_flutter/domain/auth/repositories/auth.dart';

class Login extends Usecase<void, LoginEntity> {
  final AuthRepository repository;

  Login(this.repository);

  @override
  Future<Either<Failure, void>> call({required LoginEntity params}) {
    return repository.login(params);
  }
}