import 'package:flutter/material.dart';

class SidebarScreen extends StatelessWidget {
  const SidebarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Drawer Header
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'My POS System',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Welcome, User!',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          // Home
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),

          // Inventory/Products
          ListTile(
            leading: const Icon(Icons.inventory),
            title: const Text('Inventory/Products'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/inventory');
            },
          ),

          // Reports
          ListTile(
            leading: const Icon(Icons.bar_chart),
            title: const Text('Reports'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/reports');
            },
          ),
          
          // Add to cart
          ListTile(
            leading: const Icon(Icons.bar_chart),
            title: const Text('Add to cart'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/addproductstocart');
            },
          ),

          // Customers
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Customers'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/customers');
            },
          ),

          // Suppliers
          ListTile(
            leading: const Icon(Icons.inventory),
            title: const Text('Suppliers'),
            onTap: (){
              Navigator.pushReplacementNamed(context, '/suppliers');
            },
          ),

          // Settings
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/settings');
            },
          ),

          const Divider(),

          // Logout
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              // Handle logout logic if needed
              Navigator.pop(context); // Close the drawer
            },
          ),
        ],
      ),
    );
  }
}
