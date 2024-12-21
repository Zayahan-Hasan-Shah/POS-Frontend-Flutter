import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_flutter/core/theme/app_pallete.dart';

class NetProfit extends StatelessWidget {

  final double netProfit;

  const NetProfit({super.key, required this.netProfit});

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
                    FontAwesomeIcons.chartLine,
                    color: AppPallete.textColor,
                    size: 24,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Net Profit',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppPallete.textColor,
                    ),
                  ),
                ],
              ),
              Text(
                'Rs.$netProfit/-',
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
