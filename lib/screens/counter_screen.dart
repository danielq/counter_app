import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 15;
  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    const fontSize25 = TextStyle(fontSize: 25);
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        backgroundColor: Colors.lightBlue,
        elevation: 1,
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Numero de Clicks', style: fontSize30),
              Text('$counter', style: fontSize25)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            counter++;
            setState(() {});
          }),
    );
  }
}
