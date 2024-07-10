class PhoneGames {
  String id;
  String title;
  String developer;
  String description;
  String urlimage;
  int year;

  PhoneGames({
    required this.id,
    required this.title,
    required this.developer,
    required this.description,
    required this.urlimage,
    required this.year,
  });
}

final phoneGamesList = [
  PhoneGames(
    id: '01',
    title: 'Brawl Stars',
    description:
        'Brawl Stars (abreviado BS) es un videojuego multijugador para móviles disponible en Android y iOS, desarrollado por Supercell y lanzado globalmente en 2018.1​ La versión beta del juego fue lanzada el 14 de junio de 2017 solo para Canadá, Australia y Nueva Zelanda con temáticas simples y mecánicas difíciles, mientras que la versión global se lanzó agregando un apartado visual con mayor detalles interesantes y diferentes funcionalidades, que se agregaron el 12 de diciembre de 2018. Actualmente lleva 5 años de existencia en el mundo de los videojuegos móviles.',
    developer: 'Supercell',
    year: 2017,
    urlimage:
        'https://i.scdn.co/image/ab6761610000e5ebf7b952107c126c561c52171e',
  ),
  PhoneGames(
    id: '02',
    title: 'Clash Royale',
    description: 'Description goes here',
    developer: 'Supercell',
    year: 2016,
    urlimage:
        'https://www.gamersoft.net/wp-content/uploads/2023/06/clash-royale.webp',
  ),
  PhoneGames(
    id: '03',
    title: 'Subway Surfers',
    description: 'Description goes here',
    developer: 'SYBO Games',
    year: 2012,
    urlimage:
        'https://play-lh.googleusercontent.com/alCSQLIJVL4VB9OtGATP7f503VojDSgl_V78Zzz8AvGxfs1xaEmIFoVWrKtjigjPMecH',
  ),
  PhoneGames(
    id: '04',
    title: 'Candy Crush',
    description: 'Description goes here',
    developer: 'King',
    year: 2012,
    urlimage:
        'https://play-lh.googleusercontent.com/6ducfNys46MGge6Bl3kaHaGbNnnQh46j6-3JkOqk0PKgUNVhm-dlNenJwz65nYZ4B0g8',
  ),
];
