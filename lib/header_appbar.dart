import 'package:app_flutter/card_image_list.dart';
import 'package:app_flutter/gradient_back.dart';
import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack("Bienvenido"),
        CardImageList()
      ],
    );
  }

}