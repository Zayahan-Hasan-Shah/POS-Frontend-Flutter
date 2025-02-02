import 'package:pos_flutter/domain/inventory/repositoires/inventory.dart';


class DeleteProduct {
  final InventoryRepository deleterepository;

  DeleteProduct(this.deleterepository);

  Future<void> call(String id) {
    return deleterepository.deleteProduct(id);
  }
}
