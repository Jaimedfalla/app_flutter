import 'package:flutter/material.dart';
import 'star.dart';

abstract class Rating extends StatelessWidget{

  double _stars;

  Rating(this._stars);

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