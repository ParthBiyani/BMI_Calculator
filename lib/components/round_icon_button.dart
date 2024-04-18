import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({
    this.icon,
    @required this.onPressed,
    this.onLongPress,
  });
  final IconData icon;
  final Function onPressed;
  final Function onLongPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onLongPress: onLongPress,
      onPressed: onPressed,
      elevation: 0.0,
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 90.0,
        height: 90.0,
      ),
      shape: CircleBorder(),
      child: Icon(icon),
    );
  }
}
