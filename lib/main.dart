import 'package:app_flutter/pages/home/description_place.dart';
import 'package:app_flutter/pages/home/review_list.dart';
import 'package:app_flutter/pages/home/header_appbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            ListView(
              children: [
                DescriptionPlace(
                  namePlace:"Bahamas",
                  stars:4.0,
                  descriptionPlace:"Aliquip ut rebum tempor diam ipsum justo ea et.No eos justo euismod sed no nonumy dolores labore facilisis nostrud ad ipsum elitr in amet exerci duo duis. Veniam tempor ipsum ut vulputate ex. Ipsum praesent est vel iusto eirmod ut labore consetetur eu dolore. Ut lorem dolor. Vero gubergren eirmod ea accusam gubergren justo gubergren."
                ),
                ReviweList()
              ],
            ),
            HeaderAppBar()
          ],
        ),
      ),
    ); 
  }
}