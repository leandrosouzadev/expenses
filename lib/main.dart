import 'package:flutter/material.dart';

main() => runApp(const ExpensesAll());

class ExpensesAll extends StatelessWidget {
  const ExpensesAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Despesas Pessoais"),
      ),
      body: const Center(
        child: Text('Versão inicial'),
      ),
    );
  }
}
