import 'package:flutter/material.dart';
import 'package:memes_mood/components/custom_appbar.dart';
import 'package:memes_mood/components/snackbar.dart';
import 'package:memes_mood/model/Memes.dart';
import 'package:memes_mood/screens/memes_favorite_mood.dart';

class YourMood extends StatelessWidget with Memes {
  final String imageName;
  final String details;

  final ShareList _shareList = ShareList.instance;

  YourMood({
    @required this.imageName,
    @required this.details,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: customAppBar(
        context,
        name(imageName),
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
      body: Container(
        height: height,
        //color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Stack(
                  children: [
                    Container(
                      height: height * 0.4,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 0.6,
                          image: AssetImage(
                            'assets/images/$imageName.png',
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 280),
                        child: Text(
                          description(imageName),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.09,
              ),
              ElevatedButton(
                onPressed: () {
                  _shareList.memeMood.add('$imageName');
                  message(context, 'Seu humor foi salvo');
                },
                child: Text('É assim que você se sente?'),
              ),
              Text('OU'),
              ElevatedButton(
                onPressed: () {
                  _shareList.memeFavorite.add('$imageName');
                  message(context, 'Seu meme favorito foi salvo');
                },
                child: Text('Você só gosta desse MEME?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
