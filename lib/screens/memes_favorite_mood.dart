import 'package:flutter/material.dart';
import 'package:memes_mood/components/decoration.dart';
import 'package:memes_mood/components/list_items_view.dart';

class MemesFavoriteMood extends StatelessWidget {
  final Set<String> listFavorite;
  final Set<String> listMeme;

  MemesFavoriteMood({
    this.listFavorite,
    this.listMeme,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:
        AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 50,),
            child: Text("Favorite --- Mood",),
          ),
          flexibleSpace: Container(
            decoration: decoration(),
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Icon(Icons.favorite),
              Icon(Icons.emoji_emotions_outlined),

            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListItemsView(this.listFavorite),
            ListItemsView(this.listMeme),
          ],
        ),
      ),
    );
  }
}


