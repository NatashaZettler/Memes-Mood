import 'package:flutter/material.dart';
import 'package:memes_mood/components/custom_appbar.dart';
import 'package:memes_mood/model/Memes.dart';
import 'package:memes_mood/screens/memes_favorite_mood.dart';
import 'package:memes_mood/screens/your_mood.dart';

class MemesList extends StatelessWidget with Memes {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final ShareList _shareList = ShareList.instance;

    return Scaffold(
      appBar: customAppBar(
        context,
        'Meme Mood',
        () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MemesFavoriteMood(
              listFavorite: _shareList.memeFavorite,
              listMeme: _shareList.memeMood,
            ),
          ),
        ),
        () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MemesFavoriteMood(
              listFavorite: _shareList.memeFavorite,
              listMeme: _shareList.memeMood,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'From 1 to 25, how do you feel today?',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Expanded(
            flex: 10,
            child: MemesListView(),
          ),
        ],
      ),
    );
  }
}

class MemesListView extends StatelessWidget {
  const MemesListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      YourMood(imageName: '$index', details: 'ddd'),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
