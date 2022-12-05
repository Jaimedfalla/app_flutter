import 'package:flutter/material.dart';
import '../../components/custom_app_bar.dart';
import 'contact_list.dart';

class NetworkingScreen extends StatelessWidget{

  String title ="DEVELOPERS";

  NetworkingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20, 
              color: Colors.white
            ),
        ),
        navigatorButton: IconButton(
            icon: Icon(Icons.menu,
            color: Colors.white),
            onPressed: null),
        centerTitle: true,
      ),
      body: ListView(
        children: const [CardList()],
      ),
    );
  }
}