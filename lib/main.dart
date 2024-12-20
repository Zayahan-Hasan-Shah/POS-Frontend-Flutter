import 'package:flutter/material.dart';
import 'package:pos_flutter/data/auth/models/login.dart';
import 'package:pos_flutter/presentation/addToCart/pages/addToCart.dart';
import 'package:pos_flutter/presentation/auth/pages/login_screen.dart';
import 'package:pos_flutter/presentation/customerManagement/pages/customerScreen.dart';
import 'package:pos_flutter/presentation/home/pages/home_screen.dart';
import 'package:pos_flutter/presentation/auth/pages/signup_screen.dart';
import 'package:pos_flutter/presentation/inventory/pages/inventory.dart';
import 'package:pos_flutter/presentation/report/pages/report.dart';
import 'package:pos_flutter/presentation/supplier/pages/supplier.dart';
import 'package:pos_flutter/serviceLocator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/addToCart': (context) => const AddToCartScreen(),
        '/inventory': (context) => const InventoryScreen(),
        '/reports': (context) => const Report(),
        '/addproductstocart': (context) => const AddToCartScreen(),
        '/customers': (context) => const CustomerScreen(),
        '/suppliers': (context) => const SupplierScreen(),
        // '/settings': (context) => const SettingsScreen(),
        '/signup': (context) => const SignupScreen(),
        '/logout': (context) => const LoginScreen(),
      },
    );
  }
}
