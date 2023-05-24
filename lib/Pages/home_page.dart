import 'dart:math';

import 'package:expenses/Components/transaction_form.dart';
import 'package:flutter/material.dart';

import '../Components/transaction_list.dart';
import '../Models/transaction.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final transaction = [
    Transaction(
      id: '1',
      title: 'Saldo',
      value: 500,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Conta de Luz',
      value: 550,
      date: DateTime.now(),
    ),
  ];

    _addTransaction(String title, double value) {
    final newTransaction = Transaction(
        id: Random().nextDouble().toString(),
        title: title,
        value: value,
        date: DateTime.now());
    setState(() {
      transaction.add(newTransaction);
    });

    Navigator.of(context).pop();
  }
  _openTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return TransactionForm(_addTransaction);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _openTransactionFormModal(context),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              child: SizedBox(
                child: Card(
                  color: Theme.of(context).primaryColor,
                  elevation: 5,
                  child: const Text('Grafico'),
                ),
              ),
            ),
            TransactionList(transaction: transaction), 
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openTransactionFormModal(context),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
