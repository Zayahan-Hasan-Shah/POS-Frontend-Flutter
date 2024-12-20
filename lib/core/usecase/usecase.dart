// abstract class Usecase<Type, Params> {
//   Future<Type> call({required Params modeldata});
// }


import 'package:dartz/dartz.dart';
import 'package:pos_flutter/core/errors/failure.dart';

abstract class Usecase<Type, Params> {
  Future<Either<Failure, Type>> call({required Params params});
}