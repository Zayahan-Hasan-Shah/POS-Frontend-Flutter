import 'package:flutter/material.dart';
import 'package:pos_flutter/core/theme/app_pallete.dart';

class AppbarGradient extends StatelessWidget {
  const AppbarGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppPallete.gradient1,
            AppPallete.gradient2,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
    );
  }
}
