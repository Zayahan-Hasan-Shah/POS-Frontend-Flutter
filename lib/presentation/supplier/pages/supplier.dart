import 'package:flutter/material.dart';
import 'package:pos_flutter/common/widgets/sidebar_screen.dart';

final List<Map<String, dynamic>> supplierData = [
  {
    'name': 'ABC Suppliers',
    'contact': '123-456-7890',
    'categories': 'Electronics',
    'product': 'TV Remote',
    'quantity': 14
  },
  {
    'name': 'XYZ Wholesalers',
    'contact': '987-654-3210',
    'categories': 'Groceries',
    'product': 'Plastic Dish',
    'quantity': 314
  },
  {
    'name': 'Global Traders',
    'contact': '555-666-7777',
    'categories': 'Food',
    'product': 'Biryani Rice 320',
    'quantity': 25
  },
];

class SupplierScreen extends StatefulWidget {
  const SupplierScreen({Key? key}) : super(key: key);

  @override
  _SupplierScreenState createState() => _SupplierScreenState();
}

class _SupplierScreenState extends State<SupplierScreen> {
  void _showSupplierDetails(Map<String, dynamic> supplier) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(supplier['name']),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Contact: ${supplier['contact']}'),
              Text('categories: ${supplier['categories']}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _showAddOrEditSupplierDialog(
      {bool isEdit = false, int? index, Map<String, dynamic>? supplier}) {
    final nameController = TextEditingController(text: supplier?['name'] ?? '');
    final contactController =
        TextEditingController(text: supplier?['contact'] ?? '');
    final categoriesController =
        TextEditingController(text: supplier?['categories'] ?? '');
    final productController =
        TextEditingController(text: supplier?['product'] ?? '');
    final quantityController =
        TextEditingController(text: supplier?['quantity']?.toString() ?? '');

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(isEdit ? 'Edit Supplier' : 'Add Supplier'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: 'Name')),
              TextField(
                  controller: contactController,
                  decoration: const InputDecoration(labelText: 'Contact')),
              TextField(
                  controller: categoriesController,
                  decoration: const InputDecoration(labelText: 'categories')),
              TextField(
                  controller: productController,
                  decoration: const InputDecoration(labelText: 'Product')),
              TextField(
                controller: quantityController,
                decoration: const InputDecoration(labelText: 'Quantity'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  final newSupplier = {
                    'name': nameController.text,
                    'contact': contactController.text,
                    'categories': categoriesController.text,
                    'product': productController,
                    'quantity': int.tryParse(quantityController.text) ?? 0,
                  };

                  if (isEdit && index != null) {
                    supplierData[index] = newSupplier;
                  } else {
                    supplierData.add(newSupplier);
                  }
                });
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void _deleteSupplier(int index) {
    setState(() {
      supplierData.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SidebarScreen(),
      appBar: AppBar(
        title: const Text('Suppliers'),
      ),
      body: ListView.builder(
        itemCount: supplierData.length,
        itemBuilder: (context, index) {
          final supplier = supplierData[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(supplier['name'],
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Contact: ${supplier['contact']}'),
                  Text('categories: ${supplier['categories']}'),
                  Text('Quantity: ${supplier['quantity']}'),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () => _showAddOrEditSupplierDialog(
                      isEdit: true,
                      index: index,
                      supplier: supplier,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _deleteSupplier(index),
                  ),
                ],
              ),
              onTap: () => _showSupplierDetails(supplier),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddOrEditSupplierDialog(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
