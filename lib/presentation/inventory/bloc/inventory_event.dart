// part of 'inventory_bloc.dart';

// abstract class InventoryEvent {}

// class LoadProductsEvent extends InventoryEvent {}

// class AddProductEvent extends InventoryEvent {
//   final Map<String, dynamic> product;
//   AddProductEvent(this.product);
// }

// class UpdateProductEvent extends InventoryEvent {
//   final Map<String, dynamic> updatedProduct;
//   UpdateProductEvent(this.updatedProduct);
// }

// class DeleteProductEvent extends InventoryEvent {
//   final String productId;
//   DeleteProductEvent(this.productId);
// }

// Events
part of 'inventory_bloc.dart';
abstract class InventoryEvent {}

class LoadCategoriesEvent extends InventoryEvent {}

class LoadProductsEvent extends InventoryEvent {}