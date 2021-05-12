import 'package:flutter/material.dart';
import 'package:memes_mood/screens/memes_info.dart';

void main() {
  runApp(Memes());
}

class Memes extends StatelessWidget {
  const Memes({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MemesInfo(),
    );
  }
}







class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

