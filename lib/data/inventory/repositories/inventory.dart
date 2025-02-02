// product_repository.dart (Data Layer)

import 'package:pos_flutter/data/inventory/models/inventory.dart';
import 'package:pos_flutter/data/inventory/sources/inventoryRemoteDataSource.dart';


class ProductRepository {
  final InventoryApiService source;

  ProductRepository(this.source);

  Future<List<ProductModel>> getProducts() async {
    return await source.fetchProducts();
  }

  Future<void> addProduct(ProductModel product) async {
    return await source.addProduct(product);
  }
}
