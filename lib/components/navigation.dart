import 'package:flutter/material.dart';
import 'package:memes_mood/model/memes.dart';
import 'package:memes_mood/screens/memes_favorite_mood.dart';

callMemesFavoriteMoodList(BuildContext context, int tabIndex){
  final ShareList _shareList = ShareList.instance;
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => MemesFavoriteMood(
        listFavorite: _shareList.memeFavorite,
        listMeme: _shareList.memeMood,
        tabIndex: tabIndex,
      ),
    ),
  );
}