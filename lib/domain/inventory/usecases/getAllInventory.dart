import 'package:pos_flutter/domain/inventory/entities/inventory.dart';
import 'package:pos_flutter/domain/inventory/repositoires/inventory.dart';


class GetAllProducts {
  final InventoryRepository getrepository;

  GetAllProducts(this.getrepository);

  Future<List<InventoryEntity>> call() {
    return getrepository.getAllProducts();
  }
  
  // Future <Map<List<InventoryEntity>, dynamic>> call() {
  //   return getrepository.getAllProducts();
  // }
}
