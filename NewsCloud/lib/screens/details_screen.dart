import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/components/details.dart';

class DetailsScreen extends StatelessWidget {
  final String? img;
  final String title;
  final String? content;

  const DetailsScreen(
      {super.key,
      required this.img,
      required this.title,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Details(img: img, title: title, content: content),
    );
  }
}
