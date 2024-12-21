import 'package:flutter/material.dart';
import 'package:pos_flutter/core/theme/app_pallete.dart';

class HeroCard extends StatelessWidget {
  final String username;
  final String shopAddress;
  final String shopName;

  const HeroCard({
    super.key,
    required this.username,
    required this.shopAddress,
    required this.shopName,
  });

  // const HeroCard({
  //   super.key,
  //   required String username,
  //   required String shopName,
  //   required String shopAddress,
  // });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: AppPallete.primaryCardColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left: 16,
            bottom: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shopName,
                    style: const TextStyle(
                      fontSize: 24,
                      color: AppPallete.textColor,
                    ),
                  ),
                  Text(
                    username,
                    style: const TextStyle(
                      fontSize: 20,
                      color: AppPallete.textColor,
                    ),
                  ),
                ],
              ),
              Text(
                shopAddress,
                style: const TextStyle(
                  fontSize: 16,
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
