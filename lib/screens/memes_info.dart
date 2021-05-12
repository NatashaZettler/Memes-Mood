import 'package:flutter/material.dart';
import 'package:memes_mood/components/text_formatter.dart';
import 'package:memes_mood/screens/memes_list.dart';

class MemesInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            textFormatter(
              context,
              'DIGA COMO SE SENTIR HOJE, ATRAVÉS DE UM MEME!',
              22,
            ),
            textFormatter(
              context,
              'Saber como você está hoje é fundamental para organizar o trabalho com o time e garantir o aprendizado em equipe',
              16,
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.width * 0.1,
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.width * 0.13,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MemesList())),
                  child: Text(
                    'COMEÇAR A USAR',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}