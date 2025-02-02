// // supplier/repositories/supplier_repository_impl.dart
// import 'package:pos_flutter/data/supplier/models/supplier.dart';
// import 'package:pos_flutter/domain/supplier/repositories/supplier.dart';

// class SupplierRepositoryImpl implements SupplierRepository {
//   final SupplierApiService apiService;

//   SupplierRepositoryImpl(this.apiService);

//   @override
//   Future<void> addSupplier(AddSupplierParams params) async {
//     await apiService.addSupplier(params);
//   }

//   @override
//   Future<List<Supplier>> getAllSuppliers() async {
//     final result = await apiService.getAllSuppliers();
//     return result.map((json) => SupplierModel.fromJson(json)).toList();
//   }

//   @override
//   Future<void> updateSupplier(Supplier supplier) async {
//     await apiService.updateSupplier(supplier);
//   }

//   @override
//   Future<void> deleteSupplier(String supplierId) async {
//     await apiService.deleteSupplier(supplierId);
//   }
// } 