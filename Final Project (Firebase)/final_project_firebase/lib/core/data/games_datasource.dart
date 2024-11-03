class Games {
  String id;
  String title;
  String developer;
  String description;
  String urlimage;
  int year;

  Games({
    required this.id,
    required this.title,
    required this.developer,
    required this.description,
    required this.urlimage,
    required this.year,
  });
}

List<Games> createGamesList() {
  final gamesList = [
    {
      'title': 'Counter Strike 2',
      'developer': 'Valve',
      'description':
          "Counter-Strike 2 is a 2023 free-to-play tactical first-person shooter game developed and published by Valve.",
      'urlimage':
          'https://cdn.akamai.steamstatic.com/steam/apps/730/header.jpg?t=1698860631',
      'year': 2023,
    },
    {
      'title': 'DARK SOULS III',
      'developer': 'FROM SOFTWARE',
      'description':
          'Dark Souls III is a 2016 action role-playing game developed by FromSoftware.',
      'urlimage':
          'https://store-images.s-microsoft.com/image/apps.61214.71827372323164480.6e97c7d2-899a-404f-8660-d622a7fc9162.740b1351-e659-486b-9d1c-948e0d928ead?q=90&w=480&h=270',
      'year': 2016,
    },
    {
      'title': 'Team Fortress 2',
      'developer': 'Valve',
      'description':
          "Team Fortress 2 (TF2) is a 2007 multiplayer first-person shooter game developed and published by Valve Corporation.",
      'urlimage':
          'https://i.kinja-img.com/image/upload/c_fit,q_60,w_645/5548baed347b6eceffa7c2be066ee9db.jpg',
      'year': 2007,
    },
    {
      'title': 'Hollow Knight',
      'developer': 'Team Cherry',
      'description':
          "Hollow Knight is a 2017 Metroidvania video game developed and published by independent developer Team Cherry.",
      'urlimage':
          'https://assets.nintendo.com/image/upload/ar_16:9,c_lpad,w_1240/b_white/f_auto/q_auto/ncom/software/switch/70010000003208/4643fb058642335c523910f3a7910575f56372f612f7c0c9a497aaae978d3e51',
      'year': 2017,
    },
    {
      'title': 'Grand Theft Auto V',
      'developer': 'Rockstar Games',
      'description':
          "Grand Theft Auto V is a 2013 action-adventure game developed by Rockstar North and published by Rockstar Games.",
      'urlimage':
          'https://articles-img.sftcdn.net/t_articles/auto-mapping-folder/sites/2/2022/03/gta-v-thumb-1024x576.jpg',
      'year': 2013,
    },
    {
      'title': 'ELDEN RING',
      'developer': 'FROM SOFTWARE',
      'description':
          'Elden Ring is a 2022 action role-playing game developed by FromSoftware.',
      'urlimage':
          'https://store-images.s-microsoft.com/image/apps.30323.14537704372270848.6ecb6038-5426-409a-8660-158d1eb64fb0.08703491-f5dc-4b00-bca6-486b7b293c17?q=90&w=480&h=270',
      'year': 2022,
    },
    {
      'title': 'Cyberpunk 2077',
      'developer': 'CD PROJECT RED',
      'description':
          'Cyberpunk 2077 is a 2020 action role-playing video game developed by CD Projekt Red.',
      'urlimage':
          'https://store-images.s-microsoft.com/image/apps.34838.63407868131364914.bcaa868c-407e-42c2-baeb-48a3c9f29b54.1463028d-79fa-46e5-9fc2-63203992a4dc?q=90&w=480&h=270',
      'year': 2020,
    },
    {
      'title': 'Red Dead Redemption II',
      'developer': 'Rockstar Games',
      'description':
          "Red Dead Redemption 2 is a 2018 action-adventure game developed and published by Rockstar Games.",
      'urlimage':
          'https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2018/08/21/07f65e8a-aff3-4567-b99d-1745b06baec1/red-dead-redemption-2',
      'year': 2018,
    },
    {
      'title': "Baldur's Gate III",
      'developer': 'Larian Studios',
      'description':
          "Baldur's Gate 3 is a 2023 role-playing video game developed and published by Larian Studios.",
      'urlimage':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjyhcMfKFmMhJpW-nICYXSnMDuwlTNTx43Rg&s",
      'year': 2023,
    },
  ];

  // Generate index to perform operations
  return List<Games>.generate(gamesList.length, (index) {
    final gameData = gamesList[index];
    return Games(
      id: (index + 1).toString(), // Generate ID based on index
      title: gameData['title'] as String,
      developer: gameData['developer'] as String,
      description: gameData['description'] as String,
      urlimage: gameData['urlimage'] as String,
      year: gameData['year'] as int,
    );
  });
}

final gamesList = createGamesList();
