// // inventory_bloc.dart
// import 'dart:async';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:pos_flutter/domain/inventory/usecases/addInventory.dart';
// import 'package:pos_flutter/domain/inventory/usecases/deleteProduct.dart';
// import 'package:pos_flutter/domain/inventory/usecases/getAllInventory.dart';
// import 'package:pos_flutter/domain/inventory/usecases/updateInvnetory.dart';
// part 'inventory_event.dart';
// part 'inventory_state.dart';

// class InventoryBloc extends Bloc<InventoryEvent, InventoryState> {
//   final AddProduct addProduct;
//   final DeleteProduct deleteProduct;
//   final GetAllProducts getAllProducts;
//   final UpdateProduct updateProduct;
//   InventoryBloc({
//     required this.addProduct,
//     required this.deleteProduct,
//     required this.getAllProducts,
//     required this.updateProduct,
//   }) : super(InventoryLoadingState()) {
//     on<LoadProductsEvent>(_onLoadInventory);
//   }

//   void _onLoadInventory (LoadProductsEvent productevent, Emitter<InventoryState> emit) async {
//     emit(InventoryLoadingState());
//     try{
//       final productentity = await getAllProducts;
//       emit(InventoryLoadedState(productentity));
//     } catch (e) {
//       emit(InventoryErrorState('Failed to load inventory data'));
//     }

//   }

//   // List<Map<String, dynamic>> products = [];

//   // @override
//   // Stream<InventoryState> mapEventToState(InventoryEvent event) async* {
//   //   if (event is LoadProductsEvent) {
//   //     yield InventoryLoadingState();
//   //     await Future.delayed(Duration(seconds: 1)); // Simulate network call
//   //     yield InventoryLoadedState(products);
//   //   } else if (event is AddProductEvent) {
//   //     products.add(event.product);
//   //     yield InventoryLoadedState(products);
//   //   } else if (event is UpdateProductEvent) {
//   //     int index = products
//   //         .indexWhere((prod) => prod['id'] == event.updatedProduct['id']);
//   //     if (index != -1) {
//   //       products[index] = event.updatedProduct;
//   //     }
//   //     yield InventoryLoadedState(products);
//   //   } else if (event is DeleteProductEvent) {
//   //     products.removeWhere((prod) => prod['id'] == event.productId);
//   //     yield InventoryLoadedState(products);
//   //   }
//   // }
// }

import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_flutter/data/inventory/sources/inventoryRemoteDataSource.dart';
part 'inventory_event.dart';
part 'inventory_state.dart';

// BLoC
class InventoryBloc extends Bloc<InventoryEvent, InventoryState> {
  final InventoryApiService inventoryApiService;

  InventoryBloc({required this.inventoryApiService}) : super(InventoryInitialState());

  @override
  Stream<InventoryState> mapEventToState(InventoryEvent event) async* {
    if (event is LoadCategoriesEvent) {
      try {
        final categories = await inventoryApiService.getCategories("your_token_here");
        yield CategoriesLoadedState(categories);
      } catch (e) {
        yield InventoryErrorState(e.toString());
      }
    } else if (event is LoadProductsEvent) {
      try {
        final products = await inventoryApiService.getProducts("your_token_here");
        yield ProductsLoadedState(products);
      } catch (e) {
        yield InventoryErrorState(e.toString());
      }
    }
  }
}