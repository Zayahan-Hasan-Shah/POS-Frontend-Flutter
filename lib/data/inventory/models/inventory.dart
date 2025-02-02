// product_model.dart (Data Layer)

class ProductModel {
  final String id;
  final String name;
  final double qty;
  final double price;
  final String category;
  final String brand;

  ProductModel({
    required this.id,
    required this.name,
    required this.qty,
    required this.price,
    required this.category,
    required this.brand,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      qty: json['qty'],
      price: json['price'],
      category: json['category'],
      brand: json['brand'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'qty': qty,
      'price': price,
      'category': category,
      'brand': brand,
    };
  }
}
