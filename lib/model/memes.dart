mixin Memes{

  final _memesMap = {
    '1' : 'Concentrated - You are Concentrated today.',
    '2' : 'Baww - You are Baww today.',
    '3' : 'Conflicting Emotions - You are Conflicting Emotions today.',
    '4' : 'Enraptured - You are Enraptured today.',
    '5' : 'Inimical - You are Inimical today.',
    '6' : 'Obsequious - You are Obsequious today.',
    '7' : 'Damned - You are Damned today.',
    '8' : 'Trollin - You are Trollin today.',
    '9' : 'Sanguine - You are Sanguine today.',
    '10' : 'Oblivious - You are Oblivious today.',
    '11' : 'Livid - You are Livid today.',
    '12' : 'Backtrolled - You are Backtrolled today.',
    '13' : 'Blithesome - You are Blithesome today.',
    '14' : 'Apoplectic - You are Apoplectic today.',
    '15' : 'Amenable - You are Amenable today.',
    '16' : 'Angry - You are Angry today.',
    '17' : 'Condemned - You are Condemned today.',
    '18' : 'Indefatigable - You are Indefatigable today.',
    '19' : 'Rapacious - You are Rapacious today.',
    '20' : 'BigGrin - You are BigGrin today.',
    '21' : 'AGOG - You are AGOG today.',
    '22' : 'Timorous - You are Timorous today.',
    '23' : 'Masturbatory - You are Masturbatory today.',
    '24' : 'Chagrined - You are Chagrined today.',
    '25' : 'Bilious - You are Bilious today.',
  };

  String description(String imageName) => _memesMap[imageName].split('-')[1].toString();
  String name(String imageName) => _memesMap[imageName].split('-')[0].toString();

}

class ShareList {
  static final ShareList instance = ShareList._internal();

  factory ShareList() {
    return instance;
  }

  ShareList._internal();

  final Set<String> memeMood = {};
  final Set<String> memeFavorite = {};

}