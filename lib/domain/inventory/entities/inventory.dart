class InventoryEntity {
  final String id;
  final String name;
  final double qty;
  final String category;
  final double price;
  final String brand;

  const InventoryEntity({
    required this.id,
    required this.name,
    required this.qty,
    required this.category,
    required this.price,
    required this.brand,
  });
}
