import 'package:flutter/material.dart';
import 'star.dart';

abstract class Rating extends StatelessWidget{

  final double stars;

  const Rating({super.key,required this.stars});

  List<Star> createStars(){
    List<Star> starsCreated = [];
    if(stars <= 5){
      int numberStars = stars.truncate();
      int part = ((stars * 10) % 10).toInt();
      int remainStars = ( 5 - numberStars - (part > 0 ? 1 : 0));

      for(int i=1;i<=numberStars;i++){
        starsCreated.add(const Star(Icons.star));
      }

      if(part > 0){
        starsCreated.add(const Star(Icons.star_half));
      }

      for(int i=1;i<=remainStars;i++){
        starsCreated.add(const Star(Icons.star_border));
      }

      return starsCreated;
    }

    throw Exception('Number of stars is invalid');
  }
}