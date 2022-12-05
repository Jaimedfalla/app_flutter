import 'package:flutter/material.dart';
import 'review.dart';

class ReviweList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(
          path: "assets/images/people.jpg",
          name: "Varuna Yasas",
          details: "1 review · 5 photos",
          comment: "There is an amazing place in Sri Lanka",
          stars: 4.0),
        Review(
          path: "assets/images/ann.jpg",
          name: "Anahí Salgado",
          details: "2 review · 5 photos",
          comment: "There is an amazing place in Sri Lanka",
          stars: 4.0),
        Review(
          path: "assets/images/girl.jpg",
          name: "Gissele Thomas",
          details: "2 review · 2 photos",
          comment: "There is an amazing place in Sri Lanka",
          stars: 4.0),
      ],
    );
  }

}