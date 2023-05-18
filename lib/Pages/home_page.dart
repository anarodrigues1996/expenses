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
          title:  const Text('Despesas'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              child: Card(
                color: Colors.blue,
                elevation: 5,
                child: Text('Grafico'),
              ),
            ),
            Column(
              children: transaction.map((tr) {
            return Card(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15, 
                       vertical: 10),
                       decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2
                        )
                       ),
                       padding: const EdgeInsets.all(10),
                    child: Text(tr.value.toString())),
                  Column(
                    children: [
                      Text(tr.title),
                      Text(tr.date.toString()),
                    ],
                  )
                ],
              )
            );
          }).toList(),
            )
          ],
        ));
  }
}
