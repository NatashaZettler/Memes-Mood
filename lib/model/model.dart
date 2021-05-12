mixin Memes{

  final _memesMap = {
    '1' : 'MEME - HATERBD',
    '2' : 'MEME - HATERBD',
    '3' : 'MEME - HATERBD',
    '4' : 'MEME - HATERBD',
    '5' : 'MEME - HATERBD',
    '6' : 'MEME - HATERBD',
    '7' : 'MEME - HATERBD',
    '8' : 'MEME - HATERBD',
    '9' : 'MEME - HATERBD',
    '10' : 'MEME - HATERBD',
    '11' : 'MEME - HATERBD',
    '12' : 'MEME - HATERBD',
    '13' : 'MEME - HATERBD',
    '14' : 'MEME - HATERBD',
    '15' : 'MEME - HATERBD',
    '16' : 'MEME - HATERBD',
    '17' : 'MEME - HATERBD',
    '18' : 'MEME - HATERBD',
    '19' : 'MEME - HATERBD',
    '20' : 'MEME - HATERBD',
    '21' : 'MEME - HATERBD',
    '22' : 'MEME - HATERBD',
    '23' : 'MEME - HATERBD',
    '24' : 'MEME - HATERBD',
    '25' : 'MEME - HATERBD',
  };

  final Set<String> memeMood = {};
  final Set<String> memeFavorite = {};

  String description(String imageName) => _memesMap[imageName].split('-')[1].toString();

  String name(String imageName) => _memesMap[imageName].split('-')[0].toString();

  void addMemeMood(String image){
    memeMood.add(image);
  }

  void addMemeFavorite(String image){
    memeFavorite.add(image);
  }

}