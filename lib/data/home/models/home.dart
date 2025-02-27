// class Home{
//   final String name; // username
//   final String shopName;
//   final String shopAddress;

// }

// class HomeModel {
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

//   HomeModel({
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


// lib/data/home/models/home_model.dart

class HomeModel {
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

  HomeModel({
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

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      username: json['username'],
      shopName: json['shopName'],
      shopAddress: json['shopAddress'],
      totalCategories: json['totalCategories'],
      totalProducts: json['totalProducts'],
      todaysIncome: json['todaysIncome'],
      monthlyIncome: json['monthlyIncome'],
      totalSales: json['totalSales'],
      totalProductsSold: json['totalProductsSold'],
      netProfit: json['netProfit'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'shopName': shopName,
      'shopAddress': shopAddress,
      'totalCategories': totalCategories,
      'totalProducts': totalProducts,
      'todaysIncome': todaysIncome,
      'monthlyIncome': monthlyIncome,
      'totalSales': totalSales,
      'totalProductsSold': totalProductsSold,
      'netProfit': netProfit,
    };
  }
}