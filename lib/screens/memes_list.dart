import 'package:flutter/material.dart';
import 'package:memes_mood/components/custom_appbar.dart';
import 'package:memes_mood/components/decoration.dart';
import 'package:memes_mood/components/navigation.dart';
import 'package:memes_mood/model/memes.dart';
import 'package:memes_mood/screens/your_mood.dart';

class MemesList extends StatelessWidget with Memes {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'Meme Mood',
        favoriteList: () => callMemesFavoriteMoodList(context, 0),
        moodList: () => callMemesFavoriteMoodList(context, 1),
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
            footer: number(context, index),
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

number(BuildContext context, int index) {
  return Align(
    alignment: Alignment.bottomRight,
    child: Container(
      width: MediaQuery.of(context).size.width * 0.07,
      padding: EdgeInsets.all(2),
      decoration: decorationWithBorder(),
      child: Center(
        child: Text(
          '$index',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
