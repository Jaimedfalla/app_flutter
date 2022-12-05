import 'package:flutter/material.dart';
import 'package:app_flutter/components/photo.dart';
import 'package:app_flutter/components/rating.dart';

class Review extends Rating{

  final String path;
  final String name;
  final String details;
  final String comment;

  Review({super.key, required this.path,
  required this.name,
  required this.details,
  required this.comment,
  required stars}):super(stars:stars);

  @override 
  Widget build(BuildContext context) {

    final userComment = Container(
      margin: const EdgeInsets.all(20.0),
      child: Text(comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Nerko",
          fontSize: 13.0,
          fontWeight: FontWeight.w900
        ),
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(details,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontFamily: "Nerko",
              fontSize: 13.0,
              color: Color(0xFFa3a5a7)
            ),
          ),
          //...createStars(),
        ],
      ),
    );

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Nerko",
          fontSize: 17.0
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    return Row(
        children: [
          Photo(path: path),
          userDetails
        ],
      );
  }
}