// lib/domain/home/repositories/home_repository.dart

import 'package:pos_flutter/domain/home/entities/home.dart';

abstract class HomeRepository {
  Future<HomeEntity> fetchHomeData();
}