// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        //you can change the context name
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 19, vertical: 11),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 135, 35, 28),
                      width: 1.5,
                    ),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "\$${transactions[index].amount.toStringAsFixed(2)}",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 135, 35, 28),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transactions[index].title,
                      style: TextStyle(
                          fontSize: 17.5, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      DateFormat.yMMMEd().format(transactions[index].date),
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
