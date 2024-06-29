import 'package:flutter/material.dart';
import 'item.dart';
import 'transaction_detail.dart';

class TransactionHistoryPage extends StatelessWidget {
  final List<Item> items = [
    Item(image: 'assets/images/f1.png', name: 'Rp.450.000', price: 450000),
    Item(image: 'assets/images/f2.png', name: 'Rp.250.000', price: 250000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction History'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            leading: Image.asset(item.image),
            title: Text(item.name),
            subtitle: Text('Price: Rp${item.price.toStringAsFixed(0)}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TransactionDetailPage(item: item),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
