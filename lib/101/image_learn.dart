import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.asset(
            "assets/apple-with-books-logo-1155036317239fvigojpg.png",
            fit: BoxFit.cover,
            height: 100,
          ),
        ],
      ),
    );
  }
}
