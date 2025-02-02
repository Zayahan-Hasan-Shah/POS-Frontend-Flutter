import 'package:pos_flutter/domain/inventory/entities/inventory.dart';
import 'package:pos_flutter/domain/inventory/repositoires/inventory.dart';


class UpdateProduct {
  final InventoryRepository updaterepository;

  UpdateProduct(this.updaterepository);

  Future<void> call(InventoryEntity product) {
    return updaterepository.updateProduct(product);
  }
}
