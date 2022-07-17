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
                        Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.purple),
                          ),
                          child: Text(
                            //tx.amount.toString(),
                            '\$${tx.amount}',
                            style: const TextStyle(
                              color: Colors.purple,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tx.title,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              tx.date.toString(),
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
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
