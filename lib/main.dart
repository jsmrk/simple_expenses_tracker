// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appbar"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                child: Center(
                  child: Text(
                    'chart',
                    style: TextStyle(fontSize: 31),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: Card(
                color: Colors.amber,
                child: Center(
                  child: Text(
                    'List of transact',
                    style: TextStyle(fontSize: 31),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
