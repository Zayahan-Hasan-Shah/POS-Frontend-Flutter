// class HomeEntity {
//   final String username;
//   final String shopName;
//   final String shopAddress;
//   final int totalCategories;
//   final int totalProducts;
//   final int lowProducts;
//   final int todayIncome;
//   final int monthlyIncome;
//   final int totalSales;
//   final int productSolds;
//   final int netProfit;

//   HomeEntity({
//     required this.username,
//     required this.shopName,
//     required this.shopAddress,
//     required this.totalCategories,
//     required this.totalProducts,
//     required this.lowProducts,
//     required this.todayIncome,
//     required this.monthlyIncome,
//     required this.totalSales,
//     required this.productSolds,
//     required this.netProfit,
//   });
// }

// lib/domain/home/entities/home_entity.dart

import 'package:equatable/equatable.dart';

class HomeEntity extends Equatable {
  final String username;
  final String shopName;
  final String shopAddress;
  final int totalCategories;
  final int totalProducts;
  final double todaysIncome;
  final double monthlyIncome;
  final double totalSales;
  final int totalProductsSold;
  final double netProfit;

  HomeEntity({
    required this.username,
    required this.shopName,
    required this.shopAddress,
    required this.totalCategories,
    required this.totalProducts,
    required this.todaysIncome,
    required this.monthlyIncome,
    required this.totalSales,
    required this.totalProductsSold,
    required this.netProfit,
  });

  @override
  List<Object> get props => [
        username,
        shopName,
        shopAddress,
        totalCategories,
        totalProducts,
        todaysIncome,
        monthlyIncome,
        totalSales,
        totalProductsSold,
        netProfit,
      ];
}