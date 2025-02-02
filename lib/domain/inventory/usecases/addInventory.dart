import 'package:pos_flutter/domain/inventory/entities/inventory.dart';
import 'package:pos_flutter/domain/inventory/repositoires/inventory.dart';


class AddProduct {
  final InventoryRepository addrepository;

  AddProduct(this.addrepository);

  Future<void> call(InventoryEntity product) {
    return addrepository.addProduct(product);
  }
}
