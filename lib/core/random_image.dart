import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({super.key, this.hight = 100});
  final imageUrl = 'https://picsum.photos/200/300';
  final double hight;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: hight,
      fit: BoxFit.fill,
    );
  }
}
