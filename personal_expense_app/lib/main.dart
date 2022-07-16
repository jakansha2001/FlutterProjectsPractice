import 'package:flutter/material.dart';
import 'package:personal_expense_app/transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'Dress',
      amount: 70.64,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Shoes',
      amount: 93.68,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //darkTheme: ThemeData.dark(),
      //themeMode: ThemeMode.dark,
      home: Scaffold(
        //floatingActionButton: FloatingActionButton(onPressed: () {}),
        appBar: AppBar(
          title: const Text('Personal Expense Tracker'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Card(
              child: Text('CHART!'),
            ),
            Column(
              children: transactions.map(
                (tx) {
                  return Card(
                    child: Row(
                      children: [
                        Text(tx.amount.toString()),
                        Column(
                          children: [
                            Text(tx.title),
                            Text(tx.date.toString()),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
