import "package:pos_flutter/domain/inventory/entities/inventory.dart";

abstract class InventoryRepository {
  Future<List<InventoryEntity>> getAllProducts();
  Future<void> addProduct(InventoryEntity product);
  Future<void> updateProduct(InventoryEntity product);
  Future<void> deleteProduct(String id);
}
