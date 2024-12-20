import 'package:flutter/material.dart';

class YearlyText extends StatelessWidget {
  const YearlyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Last 5 year Sales',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}