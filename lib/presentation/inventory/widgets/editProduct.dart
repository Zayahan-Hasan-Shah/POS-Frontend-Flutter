import 'package:flutter/material.dart';

class EditProduct extends StatefulWidget {
  final Map<String, dynamic> dummyData;
  final Function(Map<String, dynamic>) onUpdate;

  const EditProduct({
    super.key,
    required this.dummyData,
    required this.onUpdate,
  });

  @override
  State<EditProduct> createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController qtyController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController brandController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = widget.dummyData['name'];
    qtyController.text = widget.dummyData['qty'].toString();
    priceController.text = widget.dummyData['price'].toString();
    categoryController.text = widget.dummyData['category'];
    brandController.text = widget.dummyData['brand'];
  }

  void updateProduct() {
    // Validate and parse data before updating
    final updatedProduct = {
      'id': widget.dummyData['id'], // Keep the ID unchanged
      'name': nameController.text,
      'qty': double.tryParse(qtyController.text) ??
          widget.dummyData[
              'qty'], // Parse to double or fallback to original value
      'price': double.tryParse(priceController.text) ??
          widget.dummyData['price'], // Parse to double or fallback
      'category': categoryController.text,
      'brand': brandController.text,
    };

    widget.onUpdate(updatedProduct); // Pass the updated product back to parent
    Navigator.pop(context); // Close the EditProduct screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Product'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Product Name',
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: qtyController,
              decoration: const InputDecoration(
                labelText: 'Product Quantity',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: priceController,
              decoration: const InputDecoration(
                labelText: 'Product Price',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: categoryController,
              decoration: const InputDecoration(
                labelText: 'Product Category',
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: brandController,
              decoration: const InputDecoration(
                labelText: 'Product Brand',
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: updateProduct,
              child: const Text('Update Product'),
            ),
          ],
        ),
      ),
    );
  }
}
