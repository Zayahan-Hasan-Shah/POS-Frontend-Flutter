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

//  ============================================================================================

// Static inventory UI

// import 'package:flutter/material.dart';
// import 'package:pos_flutter/common/navigation/app_navigation.dart';
// import 'package:pos_flutter/common/widgets/sidebar_screen.dart';
// import 'package:pos_flutter/presentation/inventory/widgets/addProduct.dart';
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
//                 height: MediaQuery.of(context).size.height * 0.75,
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
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Navigator.push(context, const AddProduct(onAdd: onAdd));
//           AppNavigator.push(
//             context,
//             AddProduct(
//               onAdd: (newProduct) {
//                 setState(() {
//                   dumyData.add(newProduct);
//                 });
//               },
//             ),
//           );
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// Static inventory UI end

//  ============================================================================================

// =============================================================================================

// UI with Bloc state management

// inventory_screen.dart
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:pos_flutter/common/navigation/app_navigation.dart';
// import 'package:pos_flutter/common/widgets/sidebar_screen.dart';
// import 'package:pos_flutter/presentation/inventory/bloc/inventory_bloc.dart';
// import 'package:pos_flutter/presentation/inventory/widgets/addProduct.dart';
// import 'package:pos_flutter/presentation/inventory/widgets/editProduct.dart';
// import 'package:pos_flutter/presentation/inventory/widgets/showProductDetail.dart';
// import 'package:pos_flutter/presentation/inventory/widgets/products.dart';

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
//       body: BlocProvider(
//         create: (context) => InventoryBloc()
//           ..add(LoadProductsEvent()), // Load products on screen load
//         child: BlocBuilder<InventoryBloc, InventoryState>(
//           builder: (context, state) {
//             if (state is InventoryLoadingState) {
//               return Container(
//                   decoration: BoxDecoration(
//                     color: Colors.red,
//                   ),
//                   child: Center(child: CircularProgressIndicator()));
//             } else if (state is InventoryErrorState) {
//               return Center(child: Text('Error: ${state.message}'));
//             } else if (state is InventoryLoadedState) {
//               final products = state.products;
//               return SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             'Total Products: ${products.length}',
//                             style: const TextStyle(fontSize: 18),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(height: 10),
//                       SizedBox(
//                         height: MediaQuery.of(context).size.height * 0.75,
//                         child: ListView.builder(
//                           itemCount: products.length,
//                           itemBuilder: (context, index) {
//                             return Products(
//                               name: products[index]['name'],
//                               qty: products[index]['qty'].toDouble(),
//                               category: products[index]['category'],
//                               price: products[index]['price'].toDouble(),
//                               showProduct: () {
//                                 AppNavigator.push(
//                                   context,
//                                   Showproductdetail(dummyData: products[index]),
//                                 );
//                               },
//                               onEdit: () {
//                                 AppNavigator.push(
//                                   context,
//                                   EditProduct(
//                                     dummyData: products[index],
//                                     onUpdate: (updatedProduct) {
//                                       BlocProvider.of<InventoryBloc>(context)
//                                           .add(UpdateProductEvent(
//                                               updatedProduct));
//                                     },
//                                   ),
//                                 );
//                               },
//                               onDelete: () {
//                                 BlocProvider.of<InventoryBloc>(context).add(
//                                     DeleteProductEvent(products[index]['id']));
//                               },
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             } else {
//               return Center(child: Text('No products available.'));
//             }
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           AppNavigator.push(
//             context,
//             AddProduct(
//               onAdd: (newProduct) {
//                 BlocProvider.of<InventoryBloc>(context)
//                     .add(AddProductEvent(newProduct));
//               },
//             ),
//           );
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }


// InventoryScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_flutter/data/inventory/sources/inventoryRemoteDataSource.dart';
import 'package:pos_flutter/presentation/inventory/bloc/inventory_bloc.dart';

class InventoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => InventoryBloc(inventoryApiService: InventoryApiService()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Inventory')),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Dispatch event to load categories
                BlocProvider.of<InventoryBloc>(context).add(LoadCategoriesEvent());
              },
              child: const Text('Load Categories'),
            ),
            ElevatedButton(
              onPressed: () {
                // Dispatch event to load products
                BlocProvider.of<InventoryBloc>(context).add(LoadProductsEvent());
              },
              child: const Text('Load Products'),
            ),
            Expanded(
              child: BlocBuilder<InventoryBloc, InventoryState>(
                builder: (context, state) {
                  if (state is InventoryInitialState) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is CategoriesLoadedState) {
                    return ListView.builder(
                      itemCount: state.categories.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(state.categories[index]['name']),
                        );
                      },
                    );
                  } else if (state is ProductsLoadedState) {
                    return ListView.builder(
                      itemCount: state.products.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(state.products[index]['name']),
                          subtitle: Text('Price: Rs.${state.products[index]['price']}'),
                        );
                      },
                    );
                  } else if (state is InventoryErrorState) {
                    return Center(child: Text(state.message));
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}