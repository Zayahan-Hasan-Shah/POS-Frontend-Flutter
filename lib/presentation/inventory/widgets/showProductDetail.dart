import 'package:flutter/material.dart';
import 'package:pos_flutter/core/theme/app_pallete.dart';

class Showproductdetail extends StatelessWidget {
  final Map<String, dynamic> dummyData;
  const Showproductdetail({super.key, required this.dummyData,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: AppPallete.showProductDetailColor,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dummyData['name'],
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Quantity: ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                Text(
                  dummyData['qty'].toString(),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'price: ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                Text(
                  'Rs.${dummyData['price'].toString()}/-',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Category: ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                Text(
                  dummyData['category'],
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Brand: ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                Text(
                  dummyData['brand'],
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
