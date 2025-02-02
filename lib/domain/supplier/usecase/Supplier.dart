// // supplier/usecases/add_supplier.dart
// class AddSupplierParams {
//   final String suppliername;
//   final String contactnumber;
//   final String category;
//   final String product;
//   final int quantity;

//   AddSupplierParams({
//     required this.suppliername,
//     required this.contactnumber,
//     required this.category,
//     required this.product,
//     required this.quantity,
//   });
// }

// class AddSupplierUsecase {
//   final SupplierRepository repository;

//   AddSupplierUsecase(this.repository);

//   Future<void> call(AddSupplierParams params) {
//     return repository.addSupplier(params);
//   }
// }