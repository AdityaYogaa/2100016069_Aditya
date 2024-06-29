import 'package:flutter/material.dart';
import 'homepage.dart';
import 'transaction_history.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      routes: {
        '/transaction_history': (context) => TransactionHistoryPage(),
      },
    );
  }
}
