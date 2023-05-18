import 'package:expenses/Models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  final transaction = [
    Transaction(
      id: '1', title: 'Saldo', value: 500, date: DateTime.now(),
      
      ),
      Transaction(
      id: '2', title: 'Conta de Luz', value: 550, date: DateTime.now(),
      
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
                      vertical: 10
                      ),
                       decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2
                        )
                       ),
                       padding: const EdgeInsets.all(10),
                      child: Text(
                      '${tr.value.toStringAsFixed(2)} ECV',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 20, 
                        color: Colors.purple),
                    )),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tr.title,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                      ),
                      Text(
                        DateFormat('d MMM y').format(tr.date),
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              )
            );
          }).toList(),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                     const TextField(
                      decoration: InputDecoration(
                        labelText: 'Despesa',
                      )
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Valor(ECV)',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: (){}, 
                          child: const Text('Nova Trasação',
                          style: TextStyle(color: Colors.purple),
                          
                          ),
                          
                        ),
                      ],
                    )
                  ],
                  ),
              ),
            )
          ],
        ));
  }
}
