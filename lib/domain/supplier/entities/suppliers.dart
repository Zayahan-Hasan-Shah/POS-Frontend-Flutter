// supplier/entities/supplier.dart
class Supplier {
  final String suppliername;
  final String contactnumber;
  final String category;
  final String product;
  final int quantity;

  Supplier({
    required this.suppliername,
    required this.contactnumber,
    required this.category,
    required this.product,
    required this.quantity,
  });
}