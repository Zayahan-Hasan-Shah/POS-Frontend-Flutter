import 'package:flutter/material.dart';

class AddCustomerScreen extends StatefulWidget {
  final Function(Map<String, dynamic>) onAdd;

  const AddCustomerScreen({super.key, required this.onAdd});

  @override
  State<AddCustomerScreen> createState() => _AddCustomerScreenState();
}

class _AddCustomerScreenState extends State<AddCustomerScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController contactController = TextEditingController();

  void addCustomer() {
    if (nameController.text.isEmpty || contactController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all fields.')),
      );
      return;
    }

    final newCustomer = {
      'id': DateTime.now().millisecondsSinceEpoch.toString(),
      'name': nameController.text,
      'contact': contactController.text,
    };

    widget.onAdd(newCustomer); // Invoke the callback with the new customer
    Navigator.pop(context); // Return to the AddToCartScreen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Customer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Customer Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: contactController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'Contact Number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: addCustomer,
              child: const Text('Add Customer'),
            ),
          ],
        ),
      ),
    );
  }
}
