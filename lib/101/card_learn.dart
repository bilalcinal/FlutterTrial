import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargins.cardMargin,
            child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(
                child: Text('bilal'),
              ),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          Card(
            margin: ProjectMargins.cardMargin,
            child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(
                child: Text('bilal'),
              ),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          const _customCard(
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(
                child: Text('bilal'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

class _customCard extends StatelessWidget {
  const _customCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      child: child,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}



//borders
//StadiumBorder
//circleBorder
//RoundedRectangleBorder