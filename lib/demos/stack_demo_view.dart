import 'package:firstproject/core/random_image.dart';
import 'package:flutter/material.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});
  final _cardHeight = 50.0;
  final _cardWidht = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: const RandomImage(),
                    bottom: _cardHeight / 2,
                  ),
                  Positioned(
                      height: _cardHeight,
                      width: _cardWidht,
                      bottom: 0,
                      child: const Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(),
                      ))
                ],
              )),
          const Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }
}
