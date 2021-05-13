import 'package:flutter/material.dart';

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
              Text("Primeira Guia"),
              Text("Segunda Guia"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                childAspectRatio: 1.5,
              ),
              itemCount: this.listFavorite.length,
              itemBuilder: (context, index) {
                final String item = listFavorite.elementAt(index);
                index++;
                return Card(
                  child: GridTile(
                    footer: Align(
                      child: Text(
                        '$item',
                      ),
                      alignment: Alignment.bottomRight,
                    ),
                    child: GestureDetector(
                      child: Image.asset(
                        'assets/images/$item.png',
                      ),
                      onTap: () => Navigator.of(context).pop(),
                    ),
                  ),
                );
              },
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                childAspectRatio: 1.5,
              ),
              itemCount: this.listMeme.length,
              itemBuilder: (context, index) {
                final String item = listMeme.elementAt(index);
                index++;
                return Card(
                  child: GridTile(
                    footer: Align(
                      child: Text(
                        '$item',
                      ),
                      alignment: Alignment.bottomRight,
                    ),
                    child: GestureDetector(
                      child: Image.asset(
                        'assets/images/$index.png',
                      ),
                      onTap: () => Navigator.of(context).pop(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
