// import 'package:flutter/material.dart';
// import 'package:pos_flutter/common/navigation/app_navigation.dart';
// import 'package:pos_flutter/common/widgets/sidebar_screen.dart';
// import 'package:pos_flutter/core/constants/appbar_gradient.dart';
// import 'package:pos_flutter/presentation/inventory/widgets/editProduct.dart';
// import 'package:pos_flutter/presentation/inventory/widgets/showProductDetail.dart';
// import 'package:pos_flutter/presentation/inventory/widgets/products.dart';
// import 'package:pos_flutter/common/dummyData/dummyData.dart';

// class InventoryScreen extends StatelessWidget {
//   const InventoryScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const SidebarScreen(),
//       appBar: AppBar(
//         title: const Text('POS System'),
//         flexibleSpace: const AppbarGradient(),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Text(
//                     'Total Products: ${dumyData.length}',
//                     style: const TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height,
//                 child: ListView.builder(
//                   itemCount: dumyData.length,
//                   itemBuilder: (context, index) {
//                     return Products(
//                       name: dumyData[index]['name'],
//                       qty: dumyData[index]['qty'],
//                       category: dumyData[index]['category'],
//                       price: dumyData[index]['price'],
//                       showProduct: () {
//                         AppNavigator.push(context, Showproductdetail(dummyData: dumyData[index],));
//                       },
//                       onEdit: () {
//                         AppNavigator.push(context, EditProduct(dummyData: dumyData[index],));
//                       },
//                       onDelete: (){
//                           dumyData.removeAt(index);
//                       },

//                     );
//                   },
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Column(
//                 children: [
//                   Card(),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:pos_flutter/common/navigation/app_navigation.dart';
// import 'package:pos_flutter/common/widgets/sidebar_screen.dart';
// import 'package:pos_flutter/presentation/inventory/widgets/editProduct.dart';
// import 'package:pos_flutter/presentation/inventory/widgets/showProductDetail.dart';
// import 'package:pos_flutter/presentation/inventory/widgets/products.dart';
// import 'package:pos_flutter/common/dummyData/dummyData.dart';

// class InventoryScreen extends StatefulWidget {
//   const InventoryScreen({super.key});

//   @override
//   State<InventoryScreen> createState() => _InventoryScreenState();
// }

// class _InventoryScreenState extends State<InventoryScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const SidebarScreen(),
//       appBar: AppBar(
//         title: const Text('Inventory'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Text(
//                     'Total Products: ${dumyData.length}',
//                     style: const TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height,
//                 child: ListView.builder(
//                   itemCount: dumyData.length,
//                   itemBuilder: (context, index) {
//                     return Products(
//                       name: dumyData[index]['name'],
//                       qty: dumyData[index]['qty'].toDouble(),
//                       category: dumyData[index]['category'],
//                       price: dumyData[index]['price'].toDouble(),
//                       showProduct: () {
//                         AppNavigator.push(
//                           context,
//                           Showproductdetail(dummyData: dumyData[index]),
//                         );
//                       },
//                       onEdit: () {
//                         AppNavigator.push(
//                           context,
//                           EditProduct(
//                             dummyData: dumyData[index],
//                             onUpdate: (updatedProduct) {
//                               setState(() {
//                                 final productIndex = dumyData.indexWhere(
//                                     (prod) =>
//                                         prod['id'] == updatedProduct['id']);
//                                 if (productIndex != -1) {
//                                   dumyData[productIndex] = updatedProduct;
//                                 }
//                               });
//                             },
//                           ),
//                         );
//                       },
//                       onDelete: () {
//                         showDialog(
//                           context: context,
//                           builder: (context) => AlertDialog(
//                             title: const Text("Delete Product"),
//                             content: const Text(
//                                 "Are you sure you want to delete this product?"),
//                             actions: [
//                               TextButton(
//                                 onPressed: () =>
//                                     Navigator.pop(context), // Cancel
//                                 child: const Text("Cancel"),
//                               ),
//                               TextButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     dumyData.removeAt(index);
//                                   });
//                                   Navigator.pop(context); // Close the dialog
//                                 },
//                                 child: const Text("Delete"),
//                               ),
//                             ],
//                           ),
//                         );
//                       },
//                     );
//                   },
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Column(
//                 children: [
//                   Card(),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:pos_flutter/common/navigation/app_navigation.dart';
import 'package:pos_flutter/common/widgets/sidebar_screen.dart';
import 'package:pos_flutter/presentation/inventory/widgets/addProduct.dart';
import 'package:pos_flutter/presentation/inventory/widgets/editProduct.dart';
import 'package:pos_flutter/presentation/inventory/widgets/showProductDetail.dart';
import 'package:pos_flutter/presentation/inventory/widgets/products.dart';
import 'package:pos_flutter/common/dummyData/dummyData.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({super.key});

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SidebarScreen(),
      appBar: AppBar(
        title: const Text('Inventory'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Total Products: ${dumyData.length}',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.75,
                child: ListView.builder(
                  itemCount: dumyData.length,
                  itemBuilder: (context, index) {
                    return Products(
                      name: dumyData[index]['name'],
                      qty: dumyData[index]['qty'].toDouble(),
                      category: dumyData[index]['category'],
                      price: dumyData[index]['price'].toDouble(),
                      showProduct: () {
                        AppNavigator.push(
                          context,
                          Showproductdetail(dummyData: dumyData[index]),
                        );
                      },
                      onEdit: () {
                        AppNavigator.push(
                          context,
                          EditProduct(
                            dummyData: dumyData[index],
                            onUpdate: (updatedProduct) {
                              setState(() {
                                final productIndex = dumyData.indexWhere(
                                    (prod) =>
                                        prod['id'] == updatedProduct['id']);
                                if (productIndex != -1) {
                                  dumyData[productIndex] = updatedProduct;
                                }
                              });
                            },
                          ),
                        );
                      },
                      onDelete: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text("Delete Product"),
                            content: const Text(
                                "Are you sure you want to delete this product?"),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context), // Cancel
                                child: const Text("Cancel"),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    dumyData.removeAt(index);
                                  });
                                  Navigator.pop(context); // Close the dialog
                                },
                                child: const Text("Delete"),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(context, const AddProduct(onAdd: onAdd));
          AppNavigator.push(
            context,
            AddProduct(
              onAdd: (newProduct) {
                setState(() {
                  dumyData.add(newProduct);
                });
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
