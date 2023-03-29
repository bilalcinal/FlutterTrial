import 'package:firstproject/202/model_learn.dart';
import 'package:flutter/material.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user7 = PostModel6(body: 'a');

  @override
  void initState() {
    super.initState();
    final user1 = PostModel()
      ..id = 1
      ..body = 'vb';
    user1.title = 'Bilal';

    final user2 = PostModel2(1, 2, 'lele', 'lele');
    user2.body = 'b';

    final user3 = PostModel3(3, 4, 'yu', 'body');

    final user4 = PostModel4(userId: 2, id: 4, title: 'title', body: 'body');

    final user5 = PostModel5(userId: 4, id: 7, title: 'title', body: 'body');

    // service için en iyisi
    final user6 = PostModel6(body: 'a');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          user7 = user7.copyWith(title: 'vb');
        });
      }),
      appBar: AppBar(
        title: Text(user7.body ?? 'data yok'),
      ),
    );
  }
}
