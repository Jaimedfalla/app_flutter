import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  final String path;

  const Photo({super.key,required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(path)
        )
      ),
    );
  }
}