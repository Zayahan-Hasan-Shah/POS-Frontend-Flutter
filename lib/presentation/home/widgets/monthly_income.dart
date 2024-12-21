import 'package:flutter/material.dart';
import 'package:pos_flutter/core/theme/app_pallete.dart';

class MonthlyIncome extends StatelessWidget {
  final double monthlyIncome;

  const MonthlyIncome({super.key, required this.monthlyIncome});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 73,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: AppPallete.secondaryCardColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left: 16,
            bottom: 16,
            right: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.show_chart,
                    color: AppPallete.textColor,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Monthly Income',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppPallete.textColor,
                    ),
                  ),
                ],
              ),
              Text(
                'Rs.${monthlyIncome}/-',
                style: const TextStyle(
                  fontSize: 20,
                  color: AppPallete.textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
