// lib/domain/home/usecases/fetch_home_data.dart

import 'package:pos_flutter/domain/home/entities/home.dart';
import 'package:pos_flutter/domain/home/repositories/homeRepository.dart';

class FetchHomeData {
  final HomeRepository repository;

  FetchHomeData(this.repository);

  Future<HomeEntity> call() async {
    return await repository.fetchHomeData();
  }
}
