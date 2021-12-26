import 'package:flutter/material.dart';
import 'infos/music_list.dart';
import 'music_info_screens.dart';

class MusicListUser extends StatefulWidget {
  final List<musicList> musics;

  MusicListUser(this.musics);

  @override
  State<MusicListUser> createState() => _MusicListUserState();
}

class _MusicListUserState extends State<MusicListUser> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final allMusicImages = widget.musics.map((musicThings) {
      // final images = musicThings;
      return InkWell(
        child: Column(
          children: <Widget>[
            Card(
              elevation: 0,
              color: Colors.blueGrey,
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    '${musicThings.images}',
                    height: size.height * 0.24,
                    //width: size.width * 0.3,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    right: -5,
                    top: -5,
                    child: IconButton(
                      icon: Icon(Icons.favorite),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '${musicThings.id}',
              style: TextStyle(color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8),
              child: Text(
                '${musicThings.song}',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            )
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return MusicInfoPage(musicThings);
              },
            ),
          );
        },
        highlightColor: Colors.red,
      );
    }).toList();
    return Wrap(
      children: <Widget>[
        ...allMusicImages,
      ],
    );
  }
}
// @override
// Widget build(BuildContext context) {
//   final allMusicImages = musics.map((musicThings) {
//     final images = musicThings;
//     return Column(
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.all(.0),
//           child: Card(
//             color: Colors.blueGrey,
//             child: Column(
//               children: [
//                 IconButton(
//                   onPressed: () {
//                     // {Navigator.push(context, MaterialPageRoute(builder: (context) => MusicInfoPage();});
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) {
//                           return MusicInfoPage(musicThings);
//                         },
//                       ),
//                     );
//                   },
//                   icon: Container(
//                     child: Image(
//                         image: AssetImage(
//                           '${musicThings.images}',
//                         ),
//                         fit: BoxFit.fill),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(23),
//                         color: Colors.red),
//                   ),
//                   iconSize: 140,
//                 ),
//                 Text(
//                   '${musicThings.id}',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }).toList();
//   return SingleChildScrollView(
//     child: Wrap(
//       children: <Widget>[
//         ...allMusicImages,
//       ],
//     ),
//   );
// }

// return Card(
//   child: Container(
//     margin: EdgeInsets.symmetric(
//       vertical: 10,
//       horizontal: 15,
//     ),
//     decoration: BoxDecoration(
//       border: Border.all(
//         color: Colors.purple,
//         width: 2,
//       ),
//     ),
//     padding: EdgeInsets.all(10),
//     child: Wrap(
//       children: <Widget>[
//         Image(
//           image: AssetImage('${musicThings.images}'),
//         ),
//       ],
//     ),
//   ),
