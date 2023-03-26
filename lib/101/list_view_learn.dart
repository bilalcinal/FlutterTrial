import 'package:flutter/material.dart';

class ListViewLean extends StatefulWidget {
  const ListViewLean({super.key});

  @override
  State<ListViewLean> createState() => _ListViewLeanState();
}

class _ListViewLeanState extends State<ListViewLean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.white,
            );
          },
          itemBuilder: (context, index) {
            print(index);
            return SizedBox(
              height: 200,
              child: Column(
                children: [
                  Expanded(
                      child: Image.network('https://picsum.photos/200/300')),
                  Text('$index')
                ],
              ),
            );
          },
          itemCount: 15,
        ));
  }
}
