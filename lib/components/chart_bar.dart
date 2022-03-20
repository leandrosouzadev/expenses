import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double value;
  final double percentage;

  const ChartBar({
    Key? key,
    this.label = '',
    this.value = 0.0,
    this.percentage = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('R\$${value.toStringAsFixed(2)}'),
        const SizedBox(height: 5),
        Container(
          height: 60,
          width: 10,
          child: null,
        ),
        const SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}
