// import 'package:flutter/material.dart';

// class AddProduct extends StatelessWidget {
//   final Function(Map<String, dynamic>) onAdd;

//   const AddProduct({
//     super.key,
//     required this.onAdd,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final TextEditingController nameController = TextEditingController();
//     final TextEditingController qtyController = TextEditingController();
//     final TextEditingController categoryController = TextEditingController();
//     final TextEditingController brandController = TextEditingController();
//     final TextEditingController priceController = TextEditingController();

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Add Product'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: nameController,
//               decoration: const InputDecoration(labelText: 'Product Name'),
//             ),
//             const SizedBox(height: 10),
//             TextField(
//               controller: qtyController,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(labelText: 'Quantity'),
//             ),
//             const SizedBox(height: 10),
//             TextField(
//               controller: categoryController,
//               decoration: const InputDecoration(labelText: 'Category'),
//             ),
//             const SizedBox(height: 10),
//             const SizedBox(height: 10),
//             TextField(
//               controller: brandController,
//               decoration: const InputDecoration(labelText: 'Brand'),
//             ),
//             const SizedBox(height: 10),
//             TextField(
//               controller: priceController,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(labelText: 'Price'),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 final newProduct = {
//                   'id': DateTime.now().toString(),
//                   'name': nameController.text,
//                   'qty': int.parse(qtyController.text),
//                   'category': categoryController.text,
//                   'brand': brandController.text,
//                   'price': double.parse(priceController.text),
//                 };

//                 onAdd(newProduct);
//                 Navigator.pop(context);
//               },
//               child: const Text('Add Product'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  final Function(Map<String, dynamic>) onAdd;

  const AddProduct({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController qtyController = TextEditingController();
    final TextEditingController categoryController = TextEditingController();
    final TextEditingController priceController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Product Name',
              ),
            ),
            TextField(
              controller: qtyController,
              decoration: const InputDecoration(
                labelText: 'Quantity',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: categoryController,
              decoration: const InputDecoration(
                labelText: 'Category',
              ),
            ),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(
                labelText: 'Price',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (nameController.text.isNotEmpty &&
                    qtyController.text.isNotEmpty &&
                    categoryController.text.isNotEmpty &&
                    priceController.text.isNotEmpty) {
                  final newProduct = {
                    'id': DateTime.now().toString(),
                    'name': nameController.text,
                    'qty': double.parse(qtyController.text),
                    'category': categoryController.text,
                    'price': double.parse(priceController.text),
                  };
                  onAdd(newProduct);
                  Navigator.pop(context);
                }
              },
              child: const Text('Add Product'),
            ),
          ],
        ),
      ),
    );
  }
}
