import 'package:flutter/material.dart';
import 'package:memes_mood/components/custom_appbar.dart';
import 'package:memes_mood/components/decoration.dart';
import 'package:memes_mood/model/model.dart';

class YourMood extends StatelessWidget with Memes {
  final String imageName;

  YourMood(
    this.imageName,
  );

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: customAppBar(
        context,
        imageName,
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
                            'assets/$imageName.png',
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
