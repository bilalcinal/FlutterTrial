import 'package:flutter/material.dart';

class containerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 400,
            child: Text('a' * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50),
          ),
          Container(
              width: 50,
              height: 50,
              constraints: const BoxConstraints(
                  maxWidth: 100, minWidth: 25, maxHeight: 100),
              child: Text('c' * 100),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.red,
                  // shape: BoxShape.circle),
                  border: Border.all(width: 10, color: Colors.white12)))
        ],
      ),
    );
  }
}
