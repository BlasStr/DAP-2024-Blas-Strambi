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

final gamesList = [
  Games(
    id: '01',
    title: 'Counter Strike 2',
    description:
        "Counter-Strike 2 is a 2023 free-to-play tactical first-person shooter game developed and published by Valve. It is the fifth entry in the Counter-Strike series, developed as an updated version of the previous entry, Counter-Strike: Global Offensive (2012). The game was announced on March 22, 2023, and was released on September 27, 2023, for Windows and Linux, replacing Global Offensive on Steam. Like its predecessor, the game pits two teams, the Counter-Terrorists and the Terrorists, against each other in various objective-based game modes; additional game modes that stray away from this setup are also included. Counter-Strike 2 features major technical improvements over Global Offensive, including a move from the Source game engine to Source 2, improved graphics, and a new 'sub-tick' server architecture. In addition, many maps from Global Offensive were updated to take advantage of the features of Source 2, with some maps receiving complete overhauls.",
    developer: 'Valve',
    year: 2023,
    urlimage:
        'https://cdn.akamai.steamstatic.com/steam/apps/730/header.jpg?t=1698860631',
  ),
  Games(
    id: '02',
    title: 'DARK SOULS III',
    description:
        'Dark Souls III is a 2016 action role-playing game developed by FromSoftware and published by Bandai Namco Entertainment for PlayStation 4, Xbox One, and Windows. The third and final entry in the Dark Souls series, the game follows an unkindled character on a quest to prevent the end of the world. It is played in a third-person perspective, and players have access to various weapons, armour, magic, and consumables that they can use to fight their enemies. Hidetaka Miyazaki, the creator of the series, returned to direct the game after handing the development duties of Dark Souls II to others.',
    developer: 'FROM SOFTWARE',
    year: 2016,
    urlimage:
        'https://store-images.s-microsoft.com/image/apps.61214.71827372323164480.6e97c7d2-899a-404f-8660-d622a7fc9162.740b1351-e659-486b-9d1c-948e0d928ead?q=90&w=480&h=270',
  ),
  Games(
    id: '03',
    title: 'Team Fortress 2',
    description:
        "Team Fortress 2 (TF2) is a 2007 multiplayer first-person shooter game developed and published by Valve Corporation. It is the sequel to the 1996 Team Fortress mod for Quake and its 1999 remake, Team Fortress Classic. The game was released in October 2007 as part of The Orange Box for Microsoft Windows and the Xbox 360, and ported to the PlayStation 3 in December 2007.[2][3] It was released as a standalone game for Windows in April 2008, and updated to support macOS in June 2010 and Linux in February 2013. It is distributed online through Valve's digital retailer Steam, with Electronic Arts managing retail and console editions.",
    developer: 'Valve',
    year: 2012,
    urlimage:
        'https://i.kinja-img.com/image/upload/c_fit,q_60,w_645/5548baed347b6eceffa7c2be066ee9db.jpg',
  ),
  Games(
    id: '04',
    title: 'Hollow Knight',
    description:
        "Hollow Knight is a 2017 Metroidvania video game developed and published by independent developer Team Cherry. The player controls the Knight, an insectoid warrior exploring Hallownest, a fallen kingdom plagued by a supernatural disease. The game is set in diverse subterranean locations, featuring friendly and hostile insectoid characters and numerous bosses. Players have the opportunity to unlock abilities as they explore, along with pieces of lore and flavour text that are spread throughout the kingdom.",
    developer: 'Team Cherry',
    year: 2017,
    urlimage:
        'https://assets.nintendo.com/image/upload/ar_16:9,c_lpad,w_1240/b_white/f_auto/q_auto/ncom/software/switch/70010000003208/4643fb058642335c523910f3a7910575f56372f612f7c0c9a497aaae978d3e51',
  ),
  Games(
    id: '05',
    title: 'Grand Theft Auto V',
    description:
        "Grand Theft Auto V is a 2013 action-adventure game developed by Rockstar North and published by Rockstar Games. It is the seventh main entry in the Grand Theft Auto series, following 2008's Grand Theft Auto IV, and the fifteenth instalment overall. Set within the fictional state of San Andreas, based on Southern California, the single-player story follows three protagonists—retired bank robber Michael De Santa (Ned Luke), street gangster Franklin Clinton (Shawn Fonteno), and drug dealer and gunrunner Trevor Philips (Steven Ogg), and their attempts to commit heists while under pressure from a corrupt government agency and powerful criminals. Players freely roam San Andreas's open world countryside and fictional city of Los Santos, based on Los Angeles.",
    developer: 'Rockstar Games',
    year: 2013,
    urlimage:
        'https://articles-img.sftcdn.net/t_articles/auto-mapping-folder/sites/2/2022/03/gta-v-thumb-1024x576.jpg',
  ),
  Games(
    id: '06',
    title: 'ELDEN RING',
    description:
        'Elden Ring is a 2022 action role-playing game developed by FromSoftware. It was directed by Hidetaka Miyazaki with worldbuilding provided by American fantasy writer George R. R. Martin. It was published for PlayStation 4, PlayStation 5, Windows, Xbox One, and Xbox Series X/S on February 25 in Japan by FromSoftware and internationally by Bandai Namco Entertainment. Set in the Lands Between, players control a customizable player character on a quest to repair the Elden Ring and become the new Elden Lord.',
    developer: 'FROM SOFTWARE',
    year: 2022,
    urlimage:
        'https://store-images.s-microsoft.com/image/apps.30323.14537704372270848.6ecb6038-5426-409a-8660-158d1eb64fb0.08703491-f5dc-4b00-bca6-486b7b293c17?q=90&w=480&h=270',
  ),
  Games(
    id: '08',
    title: 'Cyberpunk 2077',
    description:
        'Cyberpunk 2077 is a 2020 action role-playing video game developed by CD Projekt Red, and published by CD Projekt, and based on Mike Pondsmith'
        's Cyberpunk tabletop game series. The plot is set in the fictional metropolis of Night City, California, within the dystopian Cyberpunk universe. The player assumes the role of V (voiced by Gavin Drea/Cherami Leigh), a mercenary who accidentally gets imbued with a cybernetic "bio-chip" containing an engram of legendary rockstar and terrorist Johnny Silverhand (voiced by Keanu Reeves). As Johnny’s behaviour and memories begin overwriting V’s own, the two must work together to separate from each other and save V'
        's life.',
    developer: 'CD PROJECT RED',
    year: 2020,
    urlimage:
        'https://store-images.s-microsoft.com/image/apps.34838.63407868131364914.bcaa868c-407e-42c2-baeb-48a3c9f29b54.1463028d-79fa-46e5-9fc2-63203992a4dc?q=90&w=480&h=270',
  ),
  Games(
    id: '09',
    title: 'Red Dead Redemption II',
    description:
        "Red Dead Redemption 2 is a 2018 action-adventure game developed and published by Rockstar Games. The game is the third entry in the Red Dead series and a prequel to the 2010 game Red Dead Redemption. The story is set in a fictionalized representation of the United States in 1899 and follows the exploits of Arthur Morgan, an outlaw and member of the Van der Linde gang, who must deal with the decline of the Wild West while attempting to survive against government forces, rival gangs, and other adversaries. The game is presented through first- and third-person perspectives, and the player may freely roam in its interactive open world. Gameplay elements include shootouts, robberies, hunting, horseback riding, interacting with non-player characters, and maintaining the character's honor rating through moral choices and deeds. A bounty system governs the response of law enforcement and bounty hunters to crimes committed by the player.",
    developer: 'Rockstar Games',
    year: 2012,
    urlimage:
        'https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2018/08/21/07f65e8a-aff3-4567-b99d-1745b06baec1/red-dead-redemption-2',
  ),
  Games(
    id: '10',
    title: "Baldur's Gate III",
    description:
        "Baldur's Gate 3 is a 2023 role-playing video game developed and published by Larian Studios. It is the third main installment to the Baldur's Gate series, based on the tabletop fantasy role-playing system of Dungeons & Dragons. A partial version of the game was released in early access format for macOS and Windows in October 2020. It remained in early access until its full release for Windows in August 2023, with versions for PlayStation 5, macOS, and Xbox Series X/S releasing later that year. Set in the universe of the Forgotten Realms, the game begins with the protagonist waking up from unconsciousness on a mind flayer dimension-crossing ship infected with a parasitic tadpole that threatens to transform them into a mind flayer. Alongside several others who have met the same fate, they are forced to go on a quest to find a remedy to prevent ceremorphosis. Players choose from twelve character classes and customize their characters at the beginning of the game; they also select an origin from several options. Through interacting with other characters, engaging in round-based combat against enemies, and making plot decisions, players determine not only their fate but also the fate of Faerûn. That determination is also impacted by the game's dice roll mechanic where a player's roll determines if the outcome of a character action is a success or failure.",
    developer: 'Larian Studios',
    year: 2023,
    urlimage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjyhcMfKFmMhJpW-nICYXSnMDuwlTNTx43Rg&s",
  ),
];
