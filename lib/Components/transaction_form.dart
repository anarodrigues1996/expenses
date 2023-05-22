import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  TransactionForm({super.key});
  final titleController = TextEditingController();
  final valueController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  labelText: 'Despesa',
                )),
            TextField(
              controller: valueController,
              decoration: const InputDecoration(
                labelText: 'Valor(ECV)',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    print(titleController.text);
                    print(valueController.text);
                  },
                  child: const Text(
                    'Nova Trasação',
                    style: TextStyle(color: Colors.purple),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
