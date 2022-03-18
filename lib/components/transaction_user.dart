import 'dart:math';

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: 't1',
        title: 'Novo Tênis de Corrida',
        value: 310.76,
        date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Conta de Luz', value: 2011.30, date: DateTime.now()),
    Transaction(
        id: 't3',
        title: 'Conta de Luz #03',
        value: 2011.30,
        date: DateTime.now()),
    Transaction(
        id: 't4',
        title: 'Conta de Luz #04',
        value: 2011.30,
        date: DateTime.now()),
    Transaction(
        id: 't5',
        title: 'Conta de Luz #05',
        value: 2011.30,
        date: DateTime.now()),
    Transaction(
        id: 't6',
        title: 'Conta de Luz #06',
        value: 2011.30,
        date: DateTime.now()),
    Transaction(
        id: 't7',
        title: 'Conta de Luz #07',
        value: 2011.30,
        date: DateTime.now()),
    Transaction(
        id: 't8',
        title: 'Conta de Luz #08',
        value: 2011.30,
        date: DateTime.now()),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
