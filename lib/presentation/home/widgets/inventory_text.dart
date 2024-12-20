import 'package:flutter/material.dart';

class InventoryText extends StatelessWidget {
  const InventoryText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Text(
        'Inventory',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
