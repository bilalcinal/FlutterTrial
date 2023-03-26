import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final String _title = 'Welcome learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mark_chat_unread_rounded)),
          const Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
      body: Column(
        children: const [],
      ),
    );
  }
}
