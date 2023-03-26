import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  CustomWidgetLearn({super.key});
  final String title = 'food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomFoodWidget(
                title: title,
                onPressed: () {},
              ),
            ),
          )),
          const SizedBox(height: 100),
          CustomFoodWidget(
            title: title,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2XPadding = const EdgeInsets.all(16.0);
}

class CustomFoodWidget extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  CustomFoodWidget({super.key, required this.title, required this.onPressed});
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: redColor, shape: const StadiumBorder()),
      onPressed: onPressed,
      child: Padding(
        padding: normal2XPadding,
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
