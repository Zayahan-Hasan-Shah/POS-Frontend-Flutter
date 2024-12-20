import 'package:flutter/material.dart';
import 'package:pos_flutter/core/constants/appbar_gradient.dart';

class Basicappbar extends StatelessWidget {
  const Basicappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: const Text('POS System'),
        flexibleSpace: const AppbarGradient(),
        
      );
  }
}