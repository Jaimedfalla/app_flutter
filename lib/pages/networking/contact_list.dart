import 'package:app_flutter/components/contact_card.dart';
import 'package:flutter/cupertino.dart';

class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContactCard(
          years: 4,
          pathImage: "assets/images/Person_1.jpg",
          name: "Amanda Murphy"),
          ContactCard(
          years: 15,
          pathImage: "assets/images/Person_2.jpg",
          name: "Graze Hartzel",enable: false,),
          ContactCard(
          years: 10,
          pathImage: "assets/images/Person_3.jpg",
          name: "Bella Hadid"),
          ContactCard(
          years: 7,
          pathImage: "assets/images/Person_4.jpg",
          name: "Julia Bergshoeff"),
          ContactCard(
          years: 5,
          pathImage: "assets/images/Person_5.jpg",
          name: "Malaika Firth")
      ],
    );
  }
}