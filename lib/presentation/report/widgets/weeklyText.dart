import 'package:flutter/material.dart';

class WeeklyText extends StatelessWidget {
  const WeeklyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Last 14 Days Sale',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}