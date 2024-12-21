import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_flutter/core/theme/app_pallete.dart';

class SaleProducts extends StatelessWidget {
  final double totalSales;

  const SaleProducts({super.key, required this.totalSales});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 73,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: AppPallete.salesColor,
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
                    FontAwesomeIcons.rupeeSign,
                    color: AppPallete.textColor,
                    size: 24,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Total Sales',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppPallete.textColor,
                    ),
                  ),
                ],
              ),
              Text(
                totalSales.toString(),
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
