import 'package:dartz/dartz.dart';
import 'package:pos_flutter/core/errors/failure.dart';
import 'package:pos_flutter/domain/auth/entities/login.dart';
// import 'package:pos_flutter/data/auth/models/login.dart';
// import 'package:pos_flutter/data/auth/models/signup.dart';
import 'package:pos_flutter/domain/auth/entities/signup.dart';

abstract class AuthRepository {

  // Future<Either> signup(SignupModel signupmodeldata);
  // Future<Either> login(LoginModel loginmodeldata);

  Future<Either<Failure, void>> signup(SignupEntity signupData);
  Future<Either<Failure, void>> login(LoginEntity loginData);

}
