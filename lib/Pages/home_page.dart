import 'package:expenses/Components/transaction_user.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Despesas'),
          actions: [
            IconButton(
              icon: const Icon(Icons.add), 
              onPressed: () {  },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                child: const SizedBox(
                  child: Card(
                    color: Colors.blue,
                    elevation: 5,
                    child: Text('Grafico'),
                  ),
                ),
              ),
              const TransactionUser(),
             ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon (Icons.add),
          ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
  }
}
