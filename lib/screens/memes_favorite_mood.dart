import 'package:flutter/material.dart';
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
        appBar: AppBar(
          title: Text("AppBar com guias"),
          bottom: TabBar(
            tabs: <Widget>[
              Text("Favorite"),
              Text("Mood"),
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


