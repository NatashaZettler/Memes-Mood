import 'package:flutter/material.dart';
import 'package:memes_mood/components/custom_appbar.dart';
import 'package:memes_mood/screens/your_mood.dart';

class MemesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 'Meme Mood'),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'De 1 até 25, como você se sente hoje?',
              style: TextStyle(),
            ),
          ),
          Expanded(
            flex: 10,
            child: GridView.builder(
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
                        'assets/$index.png',
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => YourMood('$index'),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
