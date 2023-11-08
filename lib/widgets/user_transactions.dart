import 'package:flutter/material.dart';
import 'package:simple_expenses_tracker/widgets/new_transactions.dart';
import 'package:simple_expenses_tracker/widgets/transaction_list.dart';
import '../models/transaction.dart';
import 'package:flutter/widgets.dart';
import 'dart:core';

class UserTransaction extends StatefulWidget {
  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

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

class _UserTransactionState extends State<UserTransaction> {
  //
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

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NewTransacation(_addUserTransaction),
      TransactionList(_userTransactions),
    ]);
  }
}
