import 'package:flutter/material.dart';

class ProgressHUD extends StatelessWidget {

  final Widget child;

  final double opacity;
  final Color color;
  final Animation<Color> valueColor;

  ProgressHUD({
    Key key,
    @required this.child,

    this.opacity = 0.3,
    this.color = Colors.grey,
    this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = new List<Widget>();
    widgetList.add(child);

    return Stack(
      children: widgetList,
    );
  }
}