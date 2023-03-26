import 'package:firstproject/products/counter_hello_button.dart';
import 'package:firstproject/products/language/language_learn.dart';
import 'package:flutter/material.dart';

class StatefullLearnView extends StatefulWidget {
  const StatefullLearnView({super.key});

  @override
  State<StatefullLearnView> createState() => _StatefullLearnViewState();
}

class _StatefullLearnViewState extends State<StatefullLearnView> {
  int _countValue = 0;
  int _counterCustom = 0;
  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.welcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _increment(),
          _deincrement(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            _countValue.toString(),
            style: Theme.of(context).textTheme.headlineLarge,
          )),
          const Placeholder(),
          const CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _increment() {
    print('Burda');
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deincrement() {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
