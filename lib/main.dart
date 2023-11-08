// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:simple_expenses_tracker/widgets/user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // late String titleInput;
  // late String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expenses Tracker"),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              child: Card(
                child: Text(
                  'chart',
                  style: TextStyle(fontSize: 31),
                ),
              ),
            ),
            UserTransaction(),
          ],
        ),
      ),
    );
  }
}
