import 'package:flutter/material.dart';
import 'package:memes_mood/components/decoration.dart';

PreferredSize customAppBar({
  BuildContext context,
  String title,
  Function() favoriteList,
  Function() moodList,
}) {

  final height = MediaQuery.of(context).size.height;

  return PreferredSize(
    preferredSize: Size.fromHeight(height),
    child: Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top * 1.5,
      ),
      decoration: decoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            alignment: Alignment.topCenter,
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          IconButton(
            alignment: Alignment.topRight,
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () => favoriteList(),
          ),
          IconButton(
            alignment: Alignment.topRight,
            icon: Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.white,
            ),
            onPressed: () => moodList(),
          )
        ],
      ),
    ),
  );
}
