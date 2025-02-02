import 'package:flutter/material.dart';
import 'package:pos_flutter/common/customerDummyData/customerDummyData.dart';
import 'package:pos_flutter/common/widgets/sidebar_screen.dart';
import 'package:pos_flutter/presentation/customerManagement/pages/addCustomer.dart';
import 'package:pos_flutter/presentation/invoice/pages/invoice.dart';
import 'package:pos_flutter/common/dummyData/dummyData.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  _AddToCartScreenState createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  List<Map<String, dynamic>> cart = [];
  String? selectedCustomer; // Selected customer ID
  List<Map<String, dynamic>> products = dumyData;

  // To manage the quantity controllers
  Map<int, TextEditingController> qtyControllers = {};

  @override
  void initState() {
    super.initState();
    // Initialize controllers for each product
    for (var product in products) {
      qtyControllers[product['id']] =
          TextEditingController(); // No default value
    }
  }

  @override
  void dispose() {
    // Dispose controllers
    for (var controller in qtyControllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  void addToCart(Map<String, dynamic> product, int qty) {
    setState(() {
      cart.add({
        'id': product['id'],
        'name': product['name'],
        'qty': qty,
        'price': product['price'],
        'total': product['price'] * qty,
      });
    });
  }

  void proceedToInvoice() {
    if (cart.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Cart is empty. Add products before proceeding.')),
      );
      return;
    }
    if (selectedCustomer == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Please select a customer before proceeding.')),
      );
      return;
    }
    // Get customer details by ID
    final customer = dummyCustomers
        .firstWhere((c) => c['id'].toString() == selectedCustomer);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => InvoiceScreen(
          cart: cart,
          customer: customer,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SidebarScreen(),
      appBar: AppBar(
        title: const Text('Add to Cart'),
      ),
      body: Column(
        children: [
          // Dropdown to select customer
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedCustomer,
                    items: dummyCustomers
                        .map((customer) => DropdownMenuItem<String>(
                              value: customer['id'].toString(),
                              child: Text(customer['name']),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedCustomer = value;
                      });
                    },
                    decoration: const InputDecoration(
                      labelText: 'Select Customer',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () async {
                    final newCustomer = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddCustomerScreen(
                          onAdd: (newCustomer) {
                            setState(() {
                              dummyCustomers
                                  .add(newCustomer); // Add the new customer
                              selectedCustomer = newCustomer['id']
                                  .toString(); // Auto-select the new customer
                            });
                          },
                        ),
                      ),
                    );
                    if (newCustomer != null) {
                      setState(() {
                        dummyCustomers
                            .add(newCustomer); // Update dummyCustomers
                        selectedCustomer = newCustomer['id']
                            .toString(); // Auto-select new customer
                      });
                    }
                  },
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(product['name']),
                    subtitle: Text('Price: Rs${product['price']}\t Qty: ${product['qty']}'),
                    trailing: SizedBox(
                      width: 150,
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: qtyControllers[product['id']],
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                hintText: 'Qty',
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 8),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add_shopping_cart),
                            onPressed: () {
                              final qtyText =
                                  qtyControllers[product['id']]?.text ?? '';
                              if (qtyText.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                          Text('Quantity cannot be empty.')),
                                );
                                return;
                              }

                              final qty = int.tryParse(qtyText) ?? 0;
                              if (qty <= 0 || qty > product['qty']) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                          Text('Invalid quantity selected.')),
                                );
                              } else {
                                addToCart(product, qty);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(
                                          '${product['name']} added to cart.')),
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: proceedToInvoice,
            child: const Text('Proceed to Invoice'),
          ),
        ],
      ),
    );
  }
}
