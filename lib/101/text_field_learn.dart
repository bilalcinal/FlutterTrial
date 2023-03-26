import 'package:flutter/material.dart';

class TextFieldLearnView extends StatefulWidget {
  const TextFieldLearnView({super.key});

  @override
  State<TextFieldLearnView> createState() => _TextFieldLearnViewState();
}

class _TextFieldLearnViewState extends State<TextFieldLearnView> {
  final key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
        maxLength: 20,
        buildCounter: (context,
            {int? currentLength, bool? isFocused, maxLength}) {
          return _animatedContainer(currentLength);
        },
        keyboardType: TextInputType.emailAddress,
        autofillHints: const [AutofillHints.email],
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.mark_email_read_sharp),
            border: OutlineInputBorder(),
            labelText: 'Mail'),
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      key: key,
      duration: const Duration(seconds: 1),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.green,
    );
  }
}
