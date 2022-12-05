import 'package:flutter/material.dart';

import 'floating_action_button.dart';

class CardImage extends StatelessWidget{
  String pathImage ="assets/images/beach_palm.jpeg";

  CardImage(this.pathImage, {super.key});

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350,
      width: 250,
      margin: const EdgeInsets.only(
        top:80.0,
        left: 20.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        shape:BoxShape.rectangle,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0,7.0)
          )
        ]
      ),
    );

    return Stack(
      alignment: Alignment(0.9,1.1),
      children: [
        card,
        FloatingActionButtonGreen()
      ],
    );
  }
}