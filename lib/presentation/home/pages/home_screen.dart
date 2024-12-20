import 'package:flutter/material.dart';
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
    return Scaffold(
      drawer: const SidebarScreen(),
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeroCard(),
              SizedBox(
                height: 10,
              ),
              InventoryText(),
              SizedBox(
                height: 10,
              ),
              CategoryNumber(),
              SizedBox(
                height: 10,
              ),
              ProductsNumber(),
              SizedBox(
                height: 10,
              ),
              LowProductsNumber(),
              SizedBox(
                height: 10,
              ),
              IncomeText(),
              SizedBox(
                height: 10,
              ),
              TodaysIncome(),
              SizedBox(
                height: 10,
              ),
              MonthlyIncome(),
              SizedBox(
                height: 10,
              ),
              SaleText(),
              SizedBox(
                height: 10,
              ),
              SaleProducts(),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              ProductSolds(),
              SizedBox(
                height: 10,
              ),
              NetProfit(),
            ],
          ),
        ),
      ),
    );
  }
}
