// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_expenses_tracker/transaction.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Transaction> transactions = [
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
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appbar"),
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
            Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: Text("Add Transaction"))
                  ],
                ),
              ),
            ),
            Column(
              children: transactions.map((trans) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 19, vertical: 11),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 135, 35, 28),
                            width: 1.5,
                          ),
                        ),
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "\$${trans.amount}",
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
                            trans.title,
                            style: TextStyle(
                                fontSize: 17.5, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            DateFormat.yMMMEd().format(trans.date),
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
