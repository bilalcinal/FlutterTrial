import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          const TitleTextWidget(text: "Bilal 2"),
          _emptyBox(),
          const TitleTextWidget(text: "Bilal 3"),
          _emptyBox(),
          const TitleTextWidget(text: "Bilal 4"),
          _emptyBox(),
          const TitleTextWidget(text: "Bilal 5"),
          _emptyBox(),
          const _CustomContainer(),
        ]));
  }

  SizedBox _emptyBox() {
    return const SizedBox(
      height: 10,
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headline3);
  }
}
