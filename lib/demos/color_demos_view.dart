import 'package:flutter/material.dart';

class ColorDemosView extends StatefulWidget {
  const ColorDemosView({super.key, required this.initialColor});
  final Color? initialColor;

  @override
  State<ColorDemosView> createState() => _ColorDemosViewState();
}

class _ColorDemosViewState extends State<ColorDemosView> {
  Color? _backgroundColor = Colors.transparent;
  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemosView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialColor != _backgroundColor &&
        widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
    ;
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _backgroundColor,
        bottomNavigationBar:
            BottomNavigationBar(onTap: _colorOnTap, items: const [
          BottomNavigationBarItem(
              icon: _ColorContainer(color: Colors.red), label: 'red'),
          BottomNavigationBarItem(
              icon: _ColorContainer(color: Colors.blue), label: 'blue'),
          BottomNavigationBarItem(
              icon: _ColorContainer(color: Colors.yellow), label: 'yellow')
        ]));
  }

  void _colorOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.blue.index) {
      changeBackgroundColor(Colors.blue);
    } else if (value == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    }
  }
}

enum _MyColors { red, blue, yellow }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    super.key,
    required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 20,
      width: 20,
    );
  }
}
