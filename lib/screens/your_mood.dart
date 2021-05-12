import 'package:flutter/material.dart';
import 'package:memes_mood/components/decoration.dart';

class YourMood extends StatelessWidget {
  const YourMood({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Nome do personagem'),
      ),
      body: Container(
        height: height,
        decoration: decoration(),
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
                            'assets/25.png',
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 280),
                        child: Text('ddddd'),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {}, child: Text('É assim que você se sente?')),
              Text('OU'),
              ElevatedButton(
                  onPressed: () {}, child: Text('Você só gosta desse MEME?')),
            ],
          ),
        ),
      ),
    );
  }
}