import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    this.icon,
    this.iconColor,
    Key key,
  }) : super(key: key);
  final IconData icon;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: iconColor,
      size: 45.0,
    );
  }
}
