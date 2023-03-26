import 'package:flutter/material.dart';

class NavigationDetailView extends StatefulWidget {
  const NavigationDetailView({super.key, this.isOkey = false});
  final bool isOkey;
  @override
  State<NavigationDetailView> createState() => _NavigationDetailViewState();
}

class _NavigationDetailViewState extends State<NavigationDetailView> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // ModalRoute.of(context).settings.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(widget.isOkey);
            },
            icon: Icon(Icons.color_lens,
                color: widget.isOkey ? Colors.red : Colors.green),
            label: widget.isOkey ? const Text('red') : const Text('onayla')),
      ),
    );
  }
}
