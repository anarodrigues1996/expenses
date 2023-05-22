
import 'package:expenses/Components/transaction_form.dart';
import 'package:expenses/Components/transaction_list.dart';
import 'package:expenses/Models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
 const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final titleController = TextEditingController();

  final valueController = TextEditingController();

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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(transaction: transaction),
        TransactionForm()
      ],
    );
  }
}