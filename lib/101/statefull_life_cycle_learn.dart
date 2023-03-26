import 'package:flutter/material.dart';

class StateFullLifeCycle extends StatefulWidget {
  const StateFullLifeCycle({super.key, required this.mesaj});
  final String mesaj;
  @override
  State<StateFullLifeCycle> createState() => _StateFullLifeCycleState();
}

class _StateFullLifeCycleState extends State<StateFullLifeCycle> {
  String _mesaj = '';
  late final bool _isOdd;
  @override
  void initState() {
    super.initState();
    _mesaj = widget.mesaj;
    _isOdd = widget.mesaj.length.isOdd;
    _computeName();
  }

  void _computeName() {
    if (_isOdd) {
      _mesaj += "Çift";
    } else {
      _mesaj += "Tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_mesaj)),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_mesaj))
          : ElevatedButton(onPressed: () {}, child: Text(_mesaj)),
    );
  }
}
