import 'package:flutter/material.dart';
import 'package:pos_flutter/core/theme/app_pallete.dart';

class HeroCard extends StatelessWidget {
  const HeroCard({super.key});

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
        child: const Padding(
          padding: EdgeInsets.only(top: 8, left: 16, bottom: 16,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'General Store',
                    style: TextStyle(
                      fontSize: 24,
                      color: AppPallete.textColor,
                    ),
                  ),
                  Text(
                    'Zayahan',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppPallete.textColor,
                    ),
                  ),
                ],
              ),
              Text(
                'C-64, ABC Road, Karachi',
                style: TextStyle(
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
