import 'package:flutter/material.dart';

import '../music_general.dart';
import 'music_list.dart';

class UserMusicss extends StatefulWidget {
  const UserMusicss({Key? key}) : super(key: key);

  @override
  _UserMusicssState createState() => _UserMusicssState();
}

class _UserMusicssState extends State<UserMusicss> {
  final List<musicList> _usermusics = [
    musicList(
      id: 'Sehabe',
      song: 'Bu Günah Sayılır Mı?',
      lyrics: 'Bu günah sayılır mı\n'
          'Söz üstüne söz koyamadım\n'
          'Aklım uçarak uzaklaşır\n'
          'Adaleti at çöpe nasılsa yok ihtiyacın\n'
          '\n'
          'İnsan olana bir kere söylersin en fazla iki\n'
          'Şu an içimde ne umut var ne kin\n'
          'Hak yemek mi?\n'
          '(Hak yemek mi?)\n'
          'Canın sağ olsun peki\n'
          'Senin için önemli olan onlar için ne ki\n'
          '\n'
          'O gece eve geldik ama araçtan inmedi gönlüm\n'
          'Virgin’da çalacak diye biz bir tur daha döndük\n'
          'Heyecanlıyız be kanka, gören ilk gün sanar\n'
          'Sanki Mp3’ten dinletir gibi ilk insana\n'
          '\n'
          'Ama bazen kafam kalbim kadar tam dağınık2\n'
          'Magazinden beslenmez dinleyiciyle kan bağımız\n'
          'Eyvallahın yoksa kimseye zor zamanlar\n'
          'Biz müzik yaparız birçoğu ticaret farkı anla\n'
          '\n'
          'Bu günah sayılır mı\n'
          'Söz üstüne söz koyamadım\n'
          'Aklım uçarak uzaklaşır\n'
          'Adaleti at çöpe nasılsa yok ihtiyacın\n'
          '\n'
          'Listede ilk üçteyiz bilir her yer bizi\n'
          'Muud ya da Deezer Fizy YouTube ve Apple Music\n'
          'Klipler trendlerden inmez yapılan hiç hoş değil\n'
          'Boykotu bıraktığınız gün ilk 5’teyim\n'
          '\n'
          'Biz Yeis’le iki kardeş bir çorba yemektik\n'
          'Hip-Hop özgürlük eşitlik ve mücadele demekti\n'
          'Artık sıra bizim gözler üstümüzde bolca\n'
          'Boykotu bırakmasalar da er geç olcak\n'
          '\n'
          'Bencillik mi adil olsun demek?\n'
          'Hak aramak?\n'
          'Hayvan ya da kadın haklarında da susmayan bendim\n'
          'Ali ata bak (bak)\n'
          'Işık ılık süt iç\n'
          'Diye yapsam daha mı cok severdin\n'
          '\n'
          'Bu günah sayılır mı\n'
          'Söz üstüne söz koyamadım\n'
          'Aklım uçarak uzaklaşır\n'
          'Adaleti at çöpe nasılsa yok ihtiyacın\n',
      styles: 'Rap',
      images: 'images/sehabe.png',
      ratio: 8.7,
      listenerMonthly: 214528,
      year: 2020,
    ),
    musicList(
      id: 'Ferman - Fatma',
      song: 'Efsaneyiz Birz',
      lyrics: 'HER NEFESTE BIRLIKTEYIZ DUSSEKTE KALKSAKTA\n'
          'HIC YILMADIK EFSANEYIZ TESLIM OLMADIK BU SAVASTA\n'
          'BIR TEK SEN VARDIN ONCE YA DA OYLE DUSUNDUN\n'
          'AYNI ZAFERIN PESINDE YENILMEZ BIR BUTUNSUN (dunya ile butunsun)\n'
          'HERKES GIBI COK GUCLU, CESUR VE ASIL BIR HAYALIN PESINDE HIC DURMADAN YURUDUN (yurudun)\n'
          'ZAMAN BIZI KANITLADI, O ZOR SORUYU YANITLADI,\n'
          'GORKEMLI BIR ZAFER UGRUNA BIZI HEDEFTEN SASIRTMADI\n'
          'BİRTEK SEN VARDIN ÖNCE YADA ÖYLE DÜŞÜNDÜN\n'
          'AYNI ZAFERİN PEŞİNDE YENİLMEZ BİR BÜTÜNSÜN\n'
          'HERKES GİBİ ÇOK GÜÇLÜ CESUR VE ASİL\n'
          'BİR HAYALİN PEŞİNDE HİÇ DURMADAN YÜRÜRSÜN\n'
          'KİMSE DURAMAZ ÖNÜNDE ZAFERLER SENİN ÖZÜNDE\n'
          'İÇİNDE YANAN ALEV İLE YENİLMEZ BİR BÜTÜNSÜN\n'
          'HER NEFESTE BİRLİKTEYİZ PES ETMEDİK BU SAVAŞTA DÜŞSEKTE KALKSAKTA\n'
          'HİÇ YILMADIK EFSANEYİZ TÜKENMEDİK BU SAVAŞTA DÜŞSEKTE KALKSAKTA\n'
          'BELKİ BİRAZ SARSILDIM AMA DÜŞMEKTEN KORKMAM\n'
          'SEN OLMASAN DAYANAMAZDIM YANIMDASIN HER AN\n'
          'HERKES GİBİ ÇOK GÜÇLÜ İÇİMDEKİ ALEV\n'
          'ZAFERLERİN PEŞİNDE HERGÜN BİRAZ DAHA BÜYÜDÜM\n'
          'ZAMANA MEYDAN OKUDUN KÜLLERİNDEN DOĞDUN ATEŞTEN PELERİNLER GİYDİN ÇOĞALDIN BİZ OLDUN\n'
          'HER NEFESTE BİRLİKTEYİZ PES ETMEDİK BU SAVAŞTA DÜŞSEKTE KALKSAKTA\n'
          'HİÇ YILMADIK EFSANEYİZ TÜKENMEDİK BU SAVAŞTA DÜŞSEKTE KALKSAKTA\n',
      styles: 'Rap',
      images: 'images/lol.png',
      ratio: 7.2,
      listenerMonthly: 80528,
      year: 2018,
    ),
    musicList(
      id: 'Müslüm',
      song: 'Paramparça',
      lyrics: 'Saatim yok\n'
          'Tam olarak bilemem\n'
          'Biraz bira, biraz şarap önceydi\n'
          'Nasıl oluyor zaman bir türlü geçmezken\n'
          'Yıllar hayatlar geçiyor\n'
          'Takatim yok yine de telefon sarıldım\n'
          'Son bir özür için\n'
          'Tüm sevdiğim kadınlardan\n'
          'Çok mu ayıp hala mutluluk istemek\n'
          'Neyse zaten hiç halim yok\n'
          'Bugün benim doğum günüm\n'
          'Hem sarhoşum hem yastayım\n'
          'Bir bar taburesi üstünde\n'
          'Babamın öldüğü yaştayım\n'
          'Bugün benim doğum günüm\n'
          'Kelimeler büyüyor ağzımda\n'
          'Bildiğim bütün hayatlar\n'
          'Paramparça paramparça\n'
          'Bugün benim doğum günüm\n'
          'Hem sarhoşum hem yastayım\n'
          'Bir bar taburesi üstünde\n'
          'Babamın öldüğü yaştayım\n',
      styles: 'Slow',
      images: 'images/muslum.png',
      ratio: 9.9,
      listenerMonthly: 875985,
      year: 2002,
    ),
    musicList(
      id: 'Tarkan',
      song: 'Bounce',
      lyrics: 'Let me see you bounce'
          'Let me see you bounce'
          'If you really know what\'s good for you'
          'Ease the load, let it blow'
          'Come on baby tell me what you\'re waiting for'
          'Bring it on, here we go'
          'Break free of all your senses baby close your eyes'
          'Just breathe to the rhythm of my body and mind'
          'Let me see you bounce'
          'We\'re goin\' higher, feel the fire'
          'Let me see you bounce'
          'It\'s on tonight, we\'re on the rise (oh)'
          'Let me see you bounce'
          'You don\'t have to hide it, if you like it'
          'Let me see you bounce'
          '(Let me see you bounce)'
          'Let me see you bounce'
          'You gotta (gotta gotta gotta) let it go if you wanna'
          'Really wanna lose it (lose it)'
          'Come on (come on come on come on) put your hands up'
          'Do it all the way, move it (move it)'
          'If you really don\'t wanna hold it back'
          'Let\'s react, spin the track'
          'Feel the beat take over and'
          'Let\'s pretend it\'ll never end'
          'Break free of all your senses baby close your eyes'
          'Just breathe to the rhythm of my body and mind'
          'Let me see you bounce (oh)'
          'We goin\' higher, feel the fire'
          'Let me see you bounce (oh)'
          'It\'s on tonight, we\'re on the rise (oh)'
          'Let me see you bounce (oh)'
          'You don\' have to hide it, if you like it'
          'Let me see you bounce'
          '(Let me see you bounce)'
          'Let me see you bounce',
      styles: 'Rap',
      images: 'images/tarkan.png',
      ratio: 8.7,
      listenerMonthly: 114528,
      year: 2006,
    ),
    musicList(
      id: 'Manga',
      song: 'Her Aşk Ölümü Tadacak',
      lyrics: 'Kimileri kaybolur, unutulur hatta sesi bu şehirde\n'
          'Bir gidenle, bir kalanın bilinir hikayesi\n'
          'Kimileri hayattan mutlu sonlar çalar bu şehirde\n'
          'Kiminin de bizim gibi yarım kalır hikayesi\n'
          'Bir hüzün şehri ayırdı bizi\n'
          'Ve bu son olmayacak\n'
          'Gözyaşıyla beslediği\n'
          'Her aşk ölümü tadacak\n'
          'Ne dualar kurtarır bizi artık ne de zaman\n'
          'Unutabilmek gerek bazen ağlamadan\n'
          'Ne yeni bir aşk avutur bizi ne de geçmişin izi\n'
          'Kabullenmek gerek bazen yenilgiyi\n'
          'Bir hüzün şehri ayırdı bizi\n'
          'Ve bu son olmayacak\n'
          'Gözyaşıyla beslediği\n'
          'Her aşk ölümü tadacak\n'
          'Bir hüzün şehri ayırdı bizi\n'
          'Ve bu son olmayacak\n'
          'Gözyaşıyla beslediği\n'
          'Her aşk ölümü tadacak\n'
          'Bir hüzün şehri ayırdı bizi\n'
          'Ve bu son olmayacak\n'
          'Gözyaşıyla beslediği\n'
          'Her aşk ölümü tadacak\n'
          'Bir hüzün şehri ayırdı bizi\n'
          'Ve bu son olmayacak\n'
          'Gözyaşıyla beslediği\n'
          'Her aşk ölümü tadacak\n',
      styles: 'Rap',
      images: 'images/manga.png',
      ratio: 8.7,
      listenerMonthly: 214528,
      year: 2009,
    ),
    // musicList(
    //   id: 'Müslüm',
    //   styles: 'Arabesk',
    //   images: 'images/muslum.png',
    //   ratio: 8.7,
    //   listenerMonthly: 214528,
    // ),
    // musicList(
    //   id: 'Hümeyra',
    //   styles: 'Genel',
    //   images: 'images/tutkular.png',
    //   ratio: 8.7,
    //   listenerMonthly: 214528,
    // ),
    // musicList(
    //   id: 'Tarkan',
    //   styles: 'Pop',
    //   images: 'images/tarkan.png',
    //   ratio: 8.7,
    //   listenerMonthly: 214528,
    // ),
    // musicList(
    //   id: 'LoL',
    //   styles: 'Pop',
    //   images: 'images/lol.png',
    //   ratio: 8.7,
    //   listenerMonthly: 214528,
    // ),
    // musicList(
    //   id: 'Sehabe',
    //   styles: 'Rap',
    //   images: 'images/sehabe.png',
    //   ratio: 8.7,
    //   listenerMonthly: 214528,
    // ),
    // musicList(
    //   id: 'Manga',
    //   styles: 'Rap',
    //   images: 'images/manga.png',
    //   ratio: 8.7,
    //   listenerMonthly: 214528,
    // ),
    // musicList(
    //   id: 'Müslüm',
    //   styles: 'Arabesk',
    //   images: 'images/müslüm.png',
    //   ratio: 8.7,
    //   listenerMonthly: 214528,
    // ),
    // musicList(
    //   id: 'Hümeyra',
    //   styles: 'Genel',
    //   images: 'images/tutkular.png',
    //   ratio: 8.7,
    //   listenerMonthly: 214528,
    // ),
    // musicList(
    //   id: 'Tarkan',
    //   styles: 'Pop',
    //   images: 'images/tarkan.png',
    //   ratio: 8.7,
    //   listenerMonthly: 214528,
    // ),
    // musicList(
    //   id: 'LoL',
    //   styles: 'Pop',
    //   images: 'images/lol.png',
    //   ratio: 8.7,
    //   listenerMonthly: 214528,
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return MusicListUser(_usermusics);
  }
}





// import 'package:flutter/material.dart';
// import 'package:term_project_beginning/infos/music_general.dart';
//
// import 'music_list.dart';
//
// class UserMusicss extends StatefulWidget {
//   const UserMusicss({Key? key}) : super(key: key);
//
//   @override
//   _UserMusicssState createState() => _UserMusicssState();
// }
//
// class _UserMusicssState extends State<UserMusicss> {
//   final List<musicList> _usermusics = [
//     musicList(
//       id: 'Sehabe',
//       styles: 'Rap',
//       images: 'images/sehabe.png',
//     ),
//     musicList(
//       id: 'Manga',
//       styles: 'Rap',
//       images: 'images/manga.png',
//     ),
//     musicList(
//       id: 'Müslüm',
//       styles: 'Arabesk',
//       images: AssetImage('images/müslüm.png'),
//     ),
//     musicList(
//       id: 'Hümeyra',
//       styles: 'Genel',
//       images: AssetImage('images/tutkular.png'),
//     ),
//     musicList(
//       id: 'Tarkan',
//       styles: 'Pop',
//       images: AssetImage('images/tarkan.png'),
//     ),
//     musicList(
//       id: 'LoL',
//       styles: 'Pop',
//       images: AssetImage('images/lol.png'),
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MusicListUser(_usermusics);
//   }
// }
//
//
//
