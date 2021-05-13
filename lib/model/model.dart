mixin Memes{

  final _memesMap = {
    '1' : 'Concentrated - HATERBD',
    '2' : 'Baww - HATERBD',
    '3' : 'Conflicting Emotions - HATERBD',
    '4' : 'Enraptured - HATERBD',
    '5' : 'Inimical - HATERBD',
    '6' : 'Obsequious - HATERBD',
    '7' : 'Damned - HATERBD',
    '8' : 'Trollin - HATERBD',
    '9' : 'Sanguine - HATERBD',
    '10' : 'Oblivious - HATERBD',
    '11' : 'Livid - HATERBD',
    '12' : 'Backtrolled - HATERBD',
    '13' : 'Blithesome - HATERBD',
    '14' : 'Apoplectic - HATERBD',
    '15' : 'Amenable - HATERBD',
    '16' : 'Angry - HATERBD',
    '17' : 'Condemned - HATERBD',
    '18' : 'Indefatigable - HATERBD',
    '19' : 'Rapacious - HATERBD',
    '20' : 'BigGrin - HATERBD',
    '21' : 'AGOG - HATERBD',
    '22' : 'Timorous - HATERBD',
    '23' : 'Masturbatory - HATERBD',
    '24' : 'Chagrined - HATERBD',
    '25' : 'Bilious - HATERBD',
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