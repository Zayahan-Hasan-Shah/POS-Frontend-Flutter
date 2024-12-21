import 'package:flutter/material.dart';
import 'package:pos_flutter/core/theme/app_pallete.dart';

class TodaysIncome extends StatelessWidget {
  final double todaysIncome;

  const TodaysIncome({super.key, required this.todaysIncome});

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
                    'Today\'s Income',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppPallete.textColor,
                    ),
                  ),
                ],
              ),
              Text(
                'Rs.${todaysIncome}/-',
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
