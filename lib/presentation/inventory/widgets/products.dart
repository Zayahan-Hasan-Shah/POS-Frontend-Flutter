import 'package:flutter/material.dart';
import 'package:pos_flutter/core/theme/app_pallete.dart';

class Products extends StatelessWidget {
  final String name;
  final double qty;
  final String category;
  final double price;
  final void Function()? showProduct;
  final void Function()? onDelete;
  final void Function()? onEdit;
  const Products({
    super.key,
    required this.name,
    required this.qty,
    required this.category,
    this.showProduct,
    this.onDelete,
    required this.price,
    this.onEdit,
  });
  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 6,
        ),
        height: MediaQuery.of(context).size.width / 2.5,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppPallete.inventoryProductColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Price : $price',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Category : $category',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Qty : ${qty.toString()}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: showProduct,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    width: 150,
                    decoration: BoxDecoration(
                      color: AppPallete.showProductDetailColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        'Show Detail',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: onEdit,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    width: 150,
                    decoration: BoxDecoration(
                      color: AppPallete.editButtonColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        'Edit Product',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: onDelete,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    width: 150,
                    decoration: BoxDecoration(
                      color: AppPallete.deleteBttuonColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        'Delete',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
