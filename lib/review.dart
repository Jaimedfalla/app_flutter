import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String _path = "assets/images/people.jpg";
  String _name ="Jaime Falla";
  String _details = "1 review 5 photos";
  String _comment = "There is an amazing place in Sri Lanka";

  Review(this._path,
  this._name,
  this._details,
  this._comment,
  {super.key});

  @override 
  Widget build(BuildContext context) {

    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(_comment,
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
      child: Text(_details,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Nerko",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(_name,
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

    final photo = Container(
      margin: const EdgeInsets.only(
        top:20.0,
        left: 20.0
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(_path)
        )
      ),
    );

    return Row(
      children: [
        photo,
        userDetails
      ],
    );
  }

  
}