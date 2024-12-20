import 'package:flutter/material.dart';

class MonthlyText extends StatelessWidget {
  const MonthlyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Monthly Sale',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}