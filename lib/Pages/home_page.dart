import 'package:expenses/Models/transaction.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final transaction = [
    Transaction(
      id: '1', title: 'Saldo', value: 500, date: DateTime.now(),
      
      ),
      Transaction(
      id: '2', title: 'Conta de Luz', value: 1550, date: DateTime.now(),
      
      ),
  ];
   HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Despesas'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            SizedBox(
              child: Card(
                color: Colors.blue,
                elevation: 5,
                child: Text('Grafico'),
              ),
            ),
            Card(
              child: Text('Lista de transações'),
            ),
          ],
        ));
  }
}
