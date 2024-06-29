import 'package:flutter/material.dart';
import 'item.dart';

class TransactionDetailPage extends StatelessWidget {
  final Item item;

  const TransactionDetailPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction Detail'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(item.image),
            Text(item.name, style: const TextStyle(fontSize: 24)),
            Text('Price: Rp${item.price.toStringAsFixed(0)}',
                style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
