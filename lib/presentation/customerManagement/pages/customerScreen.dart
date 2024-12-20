import 'package:flutter/material.dart';
import 'package:pos_flutter/common/customerDummyData/CustomerDummyData.dart';
import 'package:pos_flutter/common/widgets/sidebar_screen.dart';
import 'package:pos_flutter/presentation/customerManagement/pages/customerDetail.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  List<Map<String, dynamic>> customers = List.from(dummyCustomers);

  void deleteCustomer(int index) {
    setState(() {
      customers.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SidebarScreen(),
      appBar: AppBar(
        title: const Text('Customer List'),
      ),
      body: customers.isEmpty
          ? const Center(
              child: Text('No Customers Available'),
            )
          : ListView.builder(
              itemCount: customers.length,
              itemBuilder: (context, index) {
                final customer = customers[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(customer['name']![0]), // First letter of the name
                  ),
                  title: Text(customer['name']!),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      deleteCustomer(index); // Call delete function
                    },
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CustomerDetailScreen(customer: customer),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
