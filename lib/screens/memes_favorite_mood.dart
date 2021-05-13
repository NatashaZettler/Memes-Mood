import 'package:flutter/material.dart';

class MemesFavoriteMood extends StatelessWidget {
  const MemesFavoriteMood({Key key}) : super(key: key);

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
              itemCount: 25,
              itemBuilder: (context, index) {
                index++;
                return Card(
                  child: GridTile(
                    footer: Align(
                      child: Text(
                        '$index',
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
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                childAspectRatio: 1.5,
              ),
              itemCount: 25,
              itemBuilder: (context, index) {
                index++;
                return Card(
                  child: GridTile(
                    footer: Align(
                      child: Text(
                        '$index',
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
