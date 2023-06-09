import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key, required this.transaction});
  final List transaction;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemCount: transaction.length,
        itemBuilder: (ctx, index) {
          final tr = transaction[index];
          return Card(
              child: Row(
            children: [
              Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                      ),
                      ),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    '${tr.value.toStringAsFixed(2)} ECV',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                        ),
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tr.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16)),
                  Text(
                    DateFormat('d MMM y').format(tr.date),
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ));
        },
      ),
    );
  }
}
