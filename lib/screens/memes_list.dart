import 'package:flutter/material.dart';
import 'package:memes_mood/components/decoration.dart';
import 'package:memes_mood/screens/your_mood.dart';

class MemesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height),
        child: Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top * 1.5,
          ),
          decoration: decoration(),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_outlined,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Text(
                  'Meme Mood',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
                            builder: (context) => YourMood(),
                          ),
                        )),
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