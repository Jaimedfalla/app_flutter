import 'photo.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {

  final int years;
  final String pathImage;
  final String name;
  final bool enable;

  ContactCard({super.key,
    required this.years,
    required this.pathImage,
    required this.name,
    this.enable = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Photo(
            path: pathImage
          ),
          Container(width: 12),
          Flexible(
            fit: FlexFit.tight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: "Nerko"
                  ),
                ),
                Text(
                  "Experience: ${years < 10?"0":""}$years years",
                  style: const TextStyle(
                    fontFamily: "Nerko",
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: enable?Colors.red:Colors.grey.withOpacity(0.5)
            ),
            child: Center(
              child: Icon(
                Icons.mail,
                color: enable?Colors.white:Colors.black45,
              ),
            ),
          )
        ],
      ),
    );
  }
}