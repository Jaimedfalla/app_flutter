import 'package:flutter/material.dart';
import 'rating.dart';

class DescriptionPlace extends Rating {

   final String _namePlace;
   final String _descriptionPlace;

   DescriptionPlace(
    this._namePlace,
    _stars,
    this._descriptionPlace):super(_stars);

  @override
  Widget build(BuildContext context) {
    final description = Container(
      margin: const EdgeInsets.only(
        top:20.0,
        right: 20.0,
        left: 20.0
      ),
      child: Text(
        _descriptionPlace,
        style: const TextStyle(
          fontSize: 18.0,
          color: Color(0xFF56575a),
          fontFamily: "Nerko",
        ),
        textAlign: TextAlign.left,
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0),
          child: Text(
            _namePlace,
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              fontFamily: "Nerko",
            ),
            textAlign: TextAlign.left
          ),
        ),
        Row(
          children: createStars(),
        )
      ],
    );
    
    return Column(
      children:<Widget>[
        titleStars,
        description
      ]);
  }
}