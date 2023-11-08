// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:simple_expenses_tracker/widgets/new_transactions.dart';
import 'package:simple_expenses_tracker/widgets/transaction_list.dart';

import 'models/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Transaction> _userTransactions = [
    Transaction(
      amount: 123,
      id: 'id',
      title: 'title',
      date: DateTime.now(),
    ),
    Transaction(
      amount: 234,
      id: 'id2',
      title: 'title2',
      date: DateTime.now(),
    ),
  ];

  void _addUserTransaction(String title, double amount) {
    final newTransaction = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  _showAddTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return Container(
            padding: EdgeInsets.all(5),
            child: GestureDetector(
              onTap: () {},
              behavior: HitTestBehavior.opaque,
              child: NewTransaction(_addUserTransaction),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expenses Tracker"),
          actions: <Widget>[
            IconButton(
              onPressed: () => _showAddTransaction(context),
              icon: Icon(Icons.add),
            ),
          ],
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
            TransactionList(_userTransactions),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _showAddTransaction(context),
        ),
      ),
    );
  }
}
