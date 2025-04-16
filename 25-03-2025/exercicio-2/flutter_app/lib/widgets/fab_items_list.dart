import 'package:flutter/material.dart';

class FloatingActionButtonWithItemList extends StatefulWidget {
  FloatingActionButtonWithItemList({super.key, required this.icons, required this.onIconTapped});
  
  final List<IconData> icons;
  ValueChanged<int> onIconTapped;

  @override
  State createState() => FloatingActionButtonWithItemListState();
}

class FloatingActionButtonWithItemListState extends State<FloatingActionButtonWithItemList> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.icons.length, (int index) {
        return _buildChild(index);
      }).toList()..add(_buildFab()),
    );
  }

  Widget _buildChild(int index) {
    return Container(
      height: 70.0,
      width: 56.0,
      alignment: FractionalOffset.topCenter,
      child: ScaleTransition(
        scale: CurvedAnimation(
          parent: _controller,
          curve: Interval(
              0.0,
              1.0 - index / widget.icons.length / 2.0,
              curve: Curves.easeOut
          ),
        ),
        child: FloatingActionButton(
          mini: true,
          backgroundColor: Colors.blue,
          child: Icon(widget.icons[index], color: Colors.white),
          onPressed: () => _onTapped(index),
        ),
      ),
    );
  }

  Widget _buildFab() {
    return FloatingActionButton(
      onPressed: () { _controller.isDismissed ? _controller.forward() : _controller.reverse(); },
      elevation: 2.0,
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      child: Icon(Icons.add),
    );
  }

  void _onTapped(int index) {
    _controller.reverse();
    widget.onIconTapped(index);
  }
}