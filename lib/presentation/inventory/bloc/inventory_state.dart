part of 'inventory_bloc.dart';

// States
abstract class InventoryState {}

class InventoryInitialState extends InventoryState {}

class CategoriesLoadedState extends InventoryState {
  final List<Map<String, dynamic>> categories;
  CategoriesLoadedState(this.categories);
}

class ProductsLoadedState extends InventoryState {
  final List<Map<String, dynamic>> products;
  ProductsLoadedState(this.products);
}

class InventoryErrorState extends InventoryState {
  final String message;
  InventoryErrorState(this.message);
}