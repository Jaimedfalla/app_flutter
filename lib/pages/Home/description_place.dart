import 'package:flutter/material.dart';
import 'package:app_flutter/components/rating.dart';
import 'package:app_flutter/pages/Home/button_purple.dart';

class DescriptionPlace extends Rating {

   final String namePlace;
   final String descriptionPlace;

   DescriptionPlace({super.key, 
    required this.namePlace,
    required stars,
    required this.descriptionPlace}):super(stars: stars);

  @override
  Widget build(BuildContext context) {
    final description = Container(
      margin: const EdgeInsets.only(
        top:20.0,
        right: 20.0,
        left: 20.0
      ),
      child: Text(
        descriptionPlace,
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
            namePlace,
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget>[
        titleStars,
        description,
        ButtonPurple(
          thisbuttonText: "Navigate"
        )
      ]);
  }
}