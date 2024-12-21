// lib/data/home/repositories/home_repository_impl.dart

// import 'package:pos_flutter/domain/home/repositories/homeRepository.dart';

// class HomeRepositoryImpl implements HomeRepository {
//   @override
//   Future<String> fetchHomeData() async {
//     // Simulate fetching data from a data source
//     await Future.delayed(Duration(seconds: 2));
//     return "Home data loaded successfully";
//   }
// }

// lib/data/home/repositories/home_repository_impl.dart

import 'package:pos_flutter/data/home/models/home.dart';
import 'package:pos_flutter/domain/home/entities/home.dart';
import 'package:pos_flutter/domain/home/repositories/homeRepository.dart';

class HomeRepositoryImpl implements HomeRepository {
  @override
  Future<HomeEntity> fetchHomeData() async {
    // Simulate fetching data from a data source
    await Future.delayed(const Duration(seconds: 2));
    final homeModel = HomeModel(
      username: "John Doe",
      shopName: "John's Shop",
      shopAddress: "123 Main St",
      totalCategories: 5,
      totalProducts: 100,
      todaysIncome: 200.0,
      monthlyIncome: 5000.0,
      totalSales: 15000.0,
      totalProductsSold: 300,
      netProfit: 7000.0,
    );
    return HomeEntity(
      username: homeModel.username,
      shopName: homeModel.shopName,
      shopAddress: homeModel.shopAddress,
      totalCategories: homeModel.totalCategories,
      totalProducts: homeModel.totalProducts,
      todaysIncome: homeModel.todaysIncome,
      monthlyIncome: homeModel.monthlyIncome,
      totalSales: homeModel.totalSales,
      totalProductsSold: homeModel.totalProductsSold,
      netProfit: homeModel.netProfit,
    );
  }
}