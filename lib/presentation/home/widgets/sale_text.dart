import 'package:flutter/material.dart';

class SaleText extends StatelessWidget {
  const SaleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Text(
        'Sales',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
