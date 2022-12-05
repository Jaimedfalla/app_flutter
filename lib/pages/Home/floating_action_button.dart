import 'dart:ffi';

import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _FloatingActionButtonGreen();

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  bool pressed = false;

  void _onPressedFav(){
    setState(() {
      pressed = !this.pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: _onPressedFav,
      child: Icon(
        this.pressed?Icons.favorite:Icons.favorite_border
      ),
    );
  }
}