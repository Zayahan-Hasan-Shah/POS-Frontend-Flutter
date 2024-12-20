import 'package:flutter/material.dart';

class LastDayText extends StatelessWidget {
  const LastDayText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Last Day Sale',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}