import 'package:firstproject/101/button_learn.dart';
import 'package:firstproject/101/card_learn.dart';
import 'package:firstproject/101/image_learn.dart';
import 'package:firstproject/demos/stack_demo_view.dart';
import 'package:flutter/material.dart';

class PageViewLearnView extends StatefulWidget {
  const PageViewLearnView({super.key});

  @override
  State<PageViewLearnView> createState() => _PageViewLearnViewState();
}

class _PageViewLearnViewState extends State<PageViewLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.arrow_left_rounded),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.arrow_right_rounded),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        padEnds: false,
        // controller: PageController(viewportFraction: 0.7),
        children: [
          const CardLearnView(),
          const ButtonLearn(),
          const StackDemoView(),
        ],
      ),
    );
  }
}
