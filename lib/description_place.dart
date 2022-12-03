import 'package:flutter/material.dart';
import 'star.dart';

class DescriptionPlace extends StatelessWidget {

   final String _namePlace;
   final double _stars;
   final String _descriptionPlace;

   const DescriptionPlace(
    this._namePlace,
    this._stars,
    this._descriptionPlace,
    {super.key});

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

  List<Star> createStars(){
    List<Star> stars = [];
    if(_stars <= 5){
      int numberStars = _stars.truncate();
      int part = ((_stars * 10) % 10).toInt();
      int remainStars = ( 5 - numberStars - (part > 0 ? 1 : 0));

      for(int i=1;i<=numberStars;i++){
        stars.add(const Star(Icons.star));
      }

      if(part > 0){
        stars.add(const Star(Icons.star_half));
      }

      for(int i=1;i<=remainStars;i++){
        stars.add(const Star(Icons.star_border));
      }

      return stars;
    }

    throw Exception('Number of stars is invalid');
  }
}