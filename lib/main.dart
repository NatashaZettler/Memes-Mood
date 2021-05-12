import 'package:flutter/material.dart';

void main() {
  runApp(Memes());
}

class Memes extends StatelessWidget {
  const Memes({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MemesInfo(),
    );
  }
}

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

Padding textFormatter(BuildContext context, String text, [double size]) {
  return Padding(
    padding: EdgeInsets.only(
      bottom: MediaQuery.of(context).size.width * 0.15,
      left: MediaQuery.of(context).size.width * 0.05,
      right: MediaQuery.of(context).size.width * 0.05,
    ),
    child: Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(
        color: Colors.white,
        backgroundColor: Colors.black54,
        fontSize: size,
      ),
    ),
  );
}

BoxDecoration decoration() => BoxDecoration(
      gradient: LinearGradient(colors: [Colors.purple, Colors.green]),
    );

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

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

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