// import 'package:flutter/material.dart';
// import 'package:pos_flutter/presentation/home/widgets/category_number.dart';
// import 'package:pos_flutter/presentation/home/widgets/hero_card.dart';
// import 'package:pos_flutter/common/widgets/sidebar_screen.dart';
// import 'package:pos_flutter/presentation/home/widgets/income_text.dart';
// import 'package:pos_flutter/presentation/home/widgets/inventory_text.dart';
// import 'package:pos_flutter/presentation/home/widgets/low_products.dart';
// import 'package:pos_flutter/presentation/home/widgets/monthly_income.dart';
// import 'package:pos_flutter/presentation/home/widgets/net_profit.dart';
// import 'package:pos_flutter/presentation/home/widgets/product_solds.dart';
// import 'package:pos_flutter/presentation/home/widgets/products_number.dart';
// import 'package:pos_flutter/presentation/home/widgets/total_sale.dart';
// import 'package:pos_flutter/presentation/home/widgets/sale_text.dart';
// import 'package:pos_flutter/presentation/home/widgets/todays_income.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const SidebarScreen(),
//       appBar: AppBar(
//         title: const Text('Dashboard'),
//       ),
//       body: const SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               HeroCard(),
//               SizedBox(
//                 height: 10,
//               ),
//               InventoryText(),
//               SizedBox(
//                 height: 10,
//               ),
//               CategoryNumber(),
//               SizedBox(
//                 height: 10,
//               ),
//               ProductsNumber(),
//               SizedBox(
//                 height: 10,
//               ),
//               LowProductsNumber(),
//               SizedBox(
//                 height: 10,
//               ),
//               IncomeText(),
//               SizedBox(
//                 height: 10,
//               ),
//               TodaysIncome(),
//               SizedBox(
//                 height: 10,
//               ),
//               MonthlyIncome(),
//               SizedBox(
//                 height: 10,
//               ),
//               SaleText(),
//               SizedBox(
//                 height: 10,
//               ),
//               SaleProducts(),
//               SizedBox(
//                 height: 10,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               ProductSolds(),
//               SizedBox(
//                 height: 10,
//               ),
//               NetProfit(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// lib/presentation/home/pages/home_screen.dart

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:pos_flutter/presentation/home/bloc/home_bloc.dart';
// import 'package:pos_flutter/presentation/home/bloc/home_event.dart';
// import 'package:pos_flutter/presentation/home/bloc/home_state.dart';
// import 'package:pos_flutter/presentation/home/widgets/category_number.dart';
// import 'package:pos_flutter/presentation/home/widgets/hero_card.dart';
// import 'package:pos_flutter/common/widgets/sidebar_screen.dart';
// import 'package:pos_flutter/presentation/home/widgets/income_text.dart';
// import 'package:pos_flutter/presentation/home/widgets/inventory_text.dart';
// import 'package:pos_flutter/presentation/home/widgets/low_products.dart';
// import 'package:pos_flutter/presentation/home/widgets/monthly_income.dart';
// import 'package:pos_flutter/presentation/home/widgets/net_profit.dart';
// import 'package:pos_flutter/presentation/home/widgets/product_solds.dart';
// import 'package:pos_flutter/presentation/home/widgets/products_number.dart';
// import 'package:pos_flutter/presentation/home/widgets/total_sale.dart';
// import 'package:pos_flutter/presentation/home/widgets/sale_text.dart';
// import 'package:pos_flutter/presentation/home/widgets/todays_income.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => HomeBloc()..add(LoadHomeData()),
//       child: Scaffold(
//         drawer: const SidebarScreen(),
//         appBar: AppBar(
//           title: const Text('Dashboard'),
//         ),
//         body: BlocBuilder<HomeBloc, HomeState>(
//           builder: (context, state) {
//             if (state is HomeLoading) {
//               return const Center(child: CircularProgressIndicator());
//             } else if (state is HomeLoaded) {
//               return const SingleChildScrollView(
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       HeroCard(),
//                       SizedBox(height: 10),
//                       InventoryText(),
//                       SizedBox(height: 10),
//                       CategoryNumber(),
//                       SizedBox(height: 10),
//                       ProductsNumber(),
//                       SizedBox(height: 10),
//                       LowProductsNumber(),
//                       SizedBox(height: 10),
//                       IncomeText(),
//                       SizedBox(height: 10),
//                       TodaysIncome(),
//                       SizedBox(height: 10),
//                       MonthlyIncome(),
//                       SizedBox(height: 10),
//                       SaleText(),
//                       SizedBox(height: 10),
//                       SaleProducts(),
//                       SizedBox(height: 10),
//                       ProductSolds(),
//                       SizedBox(height: 10),
//                       NetProfit(),
//                     ],
//                   ),
//                 ),
//               );
//             } else if (state is HomeError) {
//               return Center(child: Text(state.message));
//             } else {
//               return const Center(child: Text('Press the button to fetch data'));
//             }
//           },
//         ),
//       ),
//     );
//   }
// }


// lib/presentation/home/pages/home_screen.dart

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:pos_flutter/data/home/repositories/home.dart';
// import 'package:pos_flutter/domain/home/usecases/home.dart';
// import 'package:pos_flutter/presentation/home/bloc/home_bloc.dart';
// import 'package:pos_flutter/presentation/home/bloc/home_event.dart';
// import 'package:pos_flutter/presentation/home/bloc/home_state.dart';
// import 'package:pos_flutter/presentation/home/widgets/category_number.dart';
// import 'package:pos_flutter/presentation/home/widgets/hero_card.dart';
// import 'package:pos_flutter/common/widgets/sidebar_screen.dart';
// import 'package:pos_flutter/presentation/home/widgets/income_text.dart';
// import 'package:pos_flutter/presentation/home/widgets/inventory_text.dart';
// import 'package:pos_flutter/presentation/home/widgets/low_products.dart';
// import 'package:pos_flutter/presentation/home/widgets/monthly_income.dart';
// import 'package:pos_flutter/presentation/home/widgets/net_profit.dart';
// import 'package:pos_flutter/presentation/home/widgets/product_solds.dart';
// import 'package:pos_flutter/presentation/home/widgets/products_number.dart';
// import 'package:pos_flutter/presentation/home/widgets/total_sale.dart';
// import 'package:pos_flutter/presentation/home/widgets/sale_text.dart';
// import 'package:pos_flutter/presentation/home/widgets/todays_income.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) {
//         final repository = HomeRepositoryImpl();
//         final fetchHomeData = FetchHomeData(repository);
//         return HomeBloc(fetchHomeData)..add(LoadHomeData());
//       },
//       child: Scaffold(
//         drawer: const SidebarScreen(),
//         appBar: AppBar(
//           title: const Text('Dashboard'),
//         ),
//         body: BlocBuilder<HomeBloc, HomeState>(
//           builder: (context, state) {
//             if (state is HomeLoading) {
//               return Center(child: CircularProgressIndicator());
//             } else if (state is HomeLoaded) {
//               return SingleChildScrollView(
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       HeroCard(),
//                       SizedBox(height: 10),
//                       InventoryText(),
//                       SizedBox(height: 10),
//                       CategoryNumber(),
//                       SizedBox(height: 10),
//                       ProductsNumber(),
//                       SizedBox(height: 10),
//                       LowProductsNumber(),
//                       SizedBox(height: 10),
//                       IncomeText(),
//                       SizedBox(height: 10),
//                       TodaysIncome(),
//                       SizedBox(height: 10),
//                       MonthlyIncome(),
//                       SizedBox(height: 10),
//                       SaleText(),
//                       SizedBox(height: 10),
//                       SaleProducts(),
//                       SizedBox(height: 10),
//                       ProductSolds(),
//                       SizedBox(height: 10),
//                       NetProfit(),
//                     ],
//                   ),
//                 ),
//               );
//             } else if (state is HomeError) {
//               return Center(child: Text(state.message));
//             } else {
//               return Center(child: Text('Press the button to fetch data'));
//             }
//           },
//         ),
//       ),
//     );
//   }
// }


// lib/presentation/home/pages/home_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_flutter/data/home/repositories/home.dart';
import 'package:pos_flutter/domain/home/usecases/home.dart';
import 'package:pos_flutter/presentation/home/bloc/home_bloc.dart';
import 'package:pos_flutter/presentation/home/bloc/home_event.dart';
import 'package:pos_flutter/presentation/home/bloc/home_state.dart';
import 'package:pos_flutter/presentation/home/widgets/category_number.dart';
import 'package:pos_flutter/presentation/home/widgets/hero_card.dart';
import 'package:pos_flutter/common/widgets/sidebar_screen.dart';
import 'package:pos_flutter/presentation/home/widgets/income_text.dart';
import 'package:pos_flutter/presentation/home/widgets/inventory_text.dart';
import 'package:pos_flutter/presentation/home/widgets/low_products.dart';
import 'package:pos_flutter/presentation/home/widgets/monthly_income.dart';
import 'package:pos_flutter/presentation/home/widgets/net_profit.dart';
import 'package:pos_flutter/presentation/home/widgets/product_solds.dart';
import 'package:pos_flutter/presentation/home/widgets/products_number.dart';
import 'package:pos_flutter/presentation/home/widgets/total_sale.dart';
import 'package:pos_flutter/presentation/home/widgets/sale_text.dart';
import 'package:pos_flutter/presentation/home/widgets/todays_income.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final repository = HomeRepositoryImpl();
        final fetchHomeData = FetchHomeData(repository);
        return HomeBloc(fetchHomeData)..add(LoadHomeData());
      },
      child: Scaffold(
        drawer: const SidebarScreen(),
        appBar: AppBar(
          title: const Text('Dashboard'),
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is HomeLoaded) {
              final homeEntity = state.homeEntity;
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text('Username: ${homeEntity.username}'),
                      // Text('Shop Name: ${homeEntity.shopName}'),
                      // Text('Shop Address: ${homeEntity.shopAddress}'),
                      HeroCard(username: homeEntity.username, shopName: homeEntity.shopName, shopAddress: homeEntity.shopAddress),
                      SizedBox(height: 10),
                      InventoryText(),
                      SizedBox(height: 10),
                      CategoryNumber(totalCategories: homeEntity.totalCategories),
                      SizedBox(height: 10),
                      ProductsNumber(totalProducts: homeEntity.totalProducts),
                      SizedBox(height: 10),
                      LowProductsNumber(),
                      SizedBox(height: 10),
                      IncomeText(),
                      SizedBox(height: 10),
                      TodaysIncome(todaysIncome: homeEntity.todaysIncome),
                      SizedBox(height: 10),
                      MonthlyIncome(monthlyIncome: homeEntity.monthlyIncome),
                      SizedBox(height: 10),
                      SaleText(),
                      SizedBox(height: 10),
                      SaleProducts(totalSales: homeEntity.totalSales),
                      SizedBox(height: 10),
                      ProductSolds(totalProductsSold: homeEntity.totalProductsSold),
                      SizedBox(height: 10),
                      NetProfit(netProfit: homeEntity.netProfit),
                    ],
                  ),
                ),
              );
            } else if (state is HomeError) {
              return Center(child: Text(state.message));
            } else {
              return Center(child: Text('Press the button to fetch data'));
            }
          },
        ),
      ),
    );
  }
}