import 'package:flutter/material.dart';
import 'package:memes_mood/components/custom_appbar.dart';
import 'package:memes_mood/components/navigation.dart';
import 'package:memes_mood/components/snackbar.dart';
import 'package:memes_mood/model/memes.dart';

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
        context: context,
        title: name(imageName),
        favoriteList: () => callMemesFavoriteMoodList(context, 0),
        moodList: () => callMemesFavoriteMoodList(context, 1),
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
              button(
                context,
                'Seu humor foi salvo',
                'É assim que você se sente?',
                _shareList.memeMood,
              ),
              Text('OU'),
              button(
                context,
                'Seu meme favorito foi salvo',
                'Você só gosta desse MEME?',
                _shareList.memeFavorite,
              ),
            ],
          ),
        ),
      ),
    );
  }

  button(
    BuildContext context,
    String textMessage,
    String buttonName,
    Set<String> meme,
  ) {
    return ElevatedButton(
      onPressed: () {
        meme.add('$imageName');
        message(context, textMessage);
      },
      child: Text(buttonName),
    );
  }
}
