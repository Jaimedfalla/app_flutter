import 'package:flutter/material.dart';

class Star extends StatelessWidget{

  final IconData _icon;  
  const Star(this._icon,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top:323.0,
        right:3.0),
      child: Icon(
        _icon,
        color: const Color(0xFFf2C611)
      ),
    );
  }
}