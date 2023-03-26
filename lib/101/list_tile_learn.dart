import 'package:firstproject/core/random_image.dart';
import 'package:flutter/material.dart';

class ListTileView extends StatelessWidget {
  const ListTileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: const RandomImage(),
                  onTap: () {},
                  subtitle: const Text('How do you use your card '),
                  leading: Container(
                      color: Colors.red, child: const Icon(Icons.money)),
                  trailing: const SizedBox(
                      width: 20, child: Icon(Icons.chevron_right)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
