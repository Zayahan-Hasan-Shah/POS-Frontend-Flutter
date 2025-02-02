// supplier/models/supplier.dart
class SupplierModel {
  final String suppliername;
  final String contactnumber;
  final String category;
  final String product;
  final int quantity;

  SupplierModel({
    required this.suppliername,
    required this.contactnumber,
    required this.category,
    required this.product,
    required this.quantity,
  });

  factory SupplierModel.fromJson(Map<String, dynamic> json) {
    return SupplierModel(
      suppliername: json['suppliername'],
      contactnumber: json['contactnumber'],
      category: json['category'],
      product: json['product'],
      quantity: json['quantity'],
    );
  }
}