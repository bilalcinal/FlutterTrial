import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key, this.userName});
  final String name = 'Bilal';
  final String? userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Welcome $name ${name.length}',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.right,
          textScaleFactor: 1,
          style: const TextStyle(
              wordSpacing: 2,
              decoration: TextDecoration.underline,
              fontStyle: FontStyle.italic,
              color: Colors.lightBlue,
              fontSize: 25,
              letterSpacing: 2,
              fontWeight: FontWeight.w300),
        ),
        Text('Welcome $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            textScaleFactor: 1,
            style: ProjectStyles.welcomeStyle),
        Text(
          'Welcome $name ${name.length}',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.right,
          textScaleFactor: 1,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: ProjectColors.welcomeColor),
        ),
        Text(userName ?? ''),
      ],
    )));
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      color: Colors.lightBlue,
      fontSize: 25,
      letterSpacing: 2,
      fontWeight: FontWeight.w300);
}

class ProjectColors {
  static Color welcomeColor = Colors.amberAccent;
}
