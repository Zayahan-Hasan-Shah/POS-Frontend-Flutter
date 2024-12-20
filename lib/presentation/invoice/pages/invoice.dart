// import 'package:flutter/material.dart';

// class InvoiceScreen extends StatelessWidget {
//   final List<Map<String, dynamic>> cart;
//   final Map<String, dynamic> customer;

//   InvoiceScreen({required this.cart, required this.customer});

//   double calculateTotal() {
//     return cart.fold(0.0, (sum, item) => sum + item['total']);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final total = calculateTotal();

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Invoice'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Customer Details
//             Text(
//               'Customer: ${customer['name']}',
//               style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             // Text('Email: ${customer['email']}'),
//             Text('Phone: ${customer['contact']}'),
//             const SizedBox(height: 20),
//             // Cart Details
//             const Text(
//               'Cart Items:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: cart.length,
//                 itemBuilder: (context, index) {
//                   final item = cart[index];
//                   return ListTile(
//                     title: Text(item['name']),
//                     subtitle: Text('Qty: ${item['qty']} x \$${item['price']}'),
//                     trailing: Text('Total: \$${item['total']}'),
//                   );
//                 },
//               ),
//             ),
//             const Divider(),
//             // Total
//             Text(
//               'Total: \$${total.toStringAsFixed(2)}',
//               style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:pos_flutter/common/widgets/sidebar_screen.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class InvoiceScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cart;
  final Map<String, dynamic> customer;

  const InvoiceScreen({super.key, required this.cart, required this.customer});

  Future<void> printInvoice() async {
    final pdf = pw.Document();

    // Add content to the PDF
    pdf.addPage(
      pw.Page(
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text('Invoice', style: const pw.TextStyle(fontSize: 24)),
            pw.SizedBox(height: 16),
            pw.Text('Customer: ${customer['name']}'),
            pw.Text('Contact: ${customer['contact']}'),
            pw.SizedBox(height: 16),
            pw.Table(
              border: pw.TableBorder.all(),
              children: [
                pw.TableRow(
                  children: [
                    pw.Text('Item'),
                    pw.Text('Qty'),
                    pw.Text('Price'),
                    pw.Text('Total'),
                  ],
                ),
                ...cart.map(
                  (item) => pw.TableRow(
                    children: [
                      pw.Text(item['name']),
                      pw.Text(item['qty'].toString()),
                      pw.Text('\$${item['price']}'),
                      pw.Text('\$${item['total']}'),
                    ],
                  ),
                ),
              ],
            ),
            pw.SizedBox(height: 16),
            pw.Text(
              'Grand Total: \$${cart.fold(0, (sum, item) => sum + (item['total'] as int))}',
              style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
            ),
          ],
        ),
      ),
    );

    // Print the PDF
    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SidebarScreen(),
      appBar: AppBar(
        title: const Text('Invoice'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Customer: ${customer['name']}'),
            Text('Contact: ${customer['contact']}'),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, index) {
                  final item = cart[index];
                  return Card(
                    child: ListTile(
                      title: Text(item['name']),
                      subtitle:
                          Text('Qty: ${item['qty']} - \$${item['price']}'),
                      trailing: Text('\$${item['total']}'),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: Rs.${cart.fold<double>(0, (sum, item) => sum + (item['total'] as double))}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.print),
                  onPressed: printInvoice,
                  tooltip: 'Print Invoice',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
