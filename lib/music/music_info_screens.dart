import 'package:flutter/material.dart';

import 'infos/music_list.dart';

class MusicInfoPage extends StatelessWidget {
  final musicList musics;

  MusicInfoPage(this.musics);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0x0D0C3EFF),
      body: Container(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  child: Image(
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image: AssetImage('${musics.images}'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      padding: EdgeInsets.only(left: 30),
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30,
                      color: Colors.white,
                    ),
                    Image(
                      image: AssetImage('images/RIYYMmusic.png'),
                      height: 60,
                      width: 150,
                    ),
                    IconButton(
                      padding: EdgeInsets.only(right: 30.0),
                      onPressed: () => print('Add to Favorites'),
                      icon: Icon(Icons.favorite_border),
                      iconSize: 30.0,
                      color: Colors.white,
                    ),
                  ],
                ),
                Positioned(
                  bottom: size.height * 0.1,
                  left: size.width * 0.4,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 50,
                          color: Colors.black12.withOpacity(0.4),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 20,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    iconSize: 40,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  right: 25.0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share),
                    iconSize: 35.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${musics.song}',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '${musics.styles}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    '⭐ ⭐ ⭐ ⭐',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'Year',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(height: 2.0),
                          Text(
                            '${musics.year}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'Monthly Listened',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(height: 2.0),
                          Text(
                            '${musics.listenerMonthly}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'Ratio',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(height: 2.0),
                          Text(
                            '${musics.ratio}',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 25.0),
                  Container(
                    height: 220.0,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[800],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          '${musics.lyrics}',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//import 'package:flutter/material.dart';
//import 'package:term_project_beginning/infos/music_list.dart';
//
// class MusicInfoPage extends StatelessWidget {
//   final musicList musics;
//
//   MusicInfoPage(this.musics);
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           Container(
//             height: size.height * 0.45,
//             child: Stack(
//               children: <Widget>[
//                 Container(
//                   height: size.height * 0.40,
//                   decoration: BoxDecoration(
//                     borderRadius:
//                     BorderRadius.only(bottomLeft: Radius.circular(50)),
//                     image: DecorationImage(
//                       image: AssetImage('${musics.images}'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 0,
//                   right: 0,
//                   child: Container(
//                     width: size.width * 0.9,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(40),
//                         // topLeft: Radius.circular(40),
//                       ),
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                           offset: Offset(0, 5),
//                           blurRadius: 50,
//                           color: Colors.black12.withOpacity(1),
//                         ),
//                       ],
//                     ),
//                     child: Row(
//                       children: <Widget>[
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: <Widget>[
//                             Padding(
//                               padding: const EdgeInsets.only(left: 15),
//                               child: Text(
//                                 '${musics.song}',
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 12,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.star,
//                       size: 35,
//                     ),
//                   ),
//                   RichText(
//                     text: TextSpan(
//                       style: TextStyle(
//                         color: Colors.black,
//                       ),
//                       children: [
//                         TextSpan(
//                           text: '${musics.ratio}/',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontFamily: 'Mochiy Pop One',
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         TextSpan(
//                           text: '10\n',
//                           style: TextStyle(
//                             fontSize: 15,
//                           ),
//                         ),
//                         // TextSpan(
//                         //   text: '${musics.listenerMonthly}',
//                         //   style: TextStyle(
//                         //     fontSize: 15,
//                         //     fontWeight: FontWeight.w600,
//                         //   ),
//                         // ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//
//                 children: <Widget>[
//                   // IconButton(
//                   //   onPressed: () {},
//                   //   icon: Icon(
//                   //     Icons.star_border,
//                   //   ),
//                   // ),
//                   Text(
//                     'Give your Ratio',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: <Widget>[
//                         Container(
//                           width: 15,
//                           child: IconButton(
//                             iconSize: 15,
//                             icon: Icon(
//                               Icons.star,
//                               size: 15,
//                             ),
//                             onPressed: () {},
//                           ),
//                         ),
//                         Container(
//                           width: 15,
//                           child: IconButton(
//                             iconSize: 15,
//                             icon: Icon(
//                               Icons.star,
//                               size: 15,
//                             ),
//                             onPressed: () {},
//                           ),
//                         ),
//                         Container(
//                           width: 15,
//                           child: IconButton(
//                             iconSize: 15,
//                             icon: Icon(
//                               Icons.star,
//                               size: 15,
//                             ),
//                             onPressed: () {},
//                           ),
//                         ),
//                         Container(
//                           width: 15,
//                           child: IconButton(
//                             iconSize: 15,
//                             icon: Icon(
//                               Icons.star,
//                               size: 15,
//                             ),
//                             onPressed: () {},
//                           ),
//                         ),
//                         Container(
//                           width: 15,
//                           child: IconButton(
//                             iconSize: 15,
//                             icon: Icon(
//                               Icons.star,
//                               size: 15,
//                             ),
//                             onPressed: () {},
//                           ),
//                         ),
//                       ]),
//                 ],
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                     padding: EdgeInsets.all(6),
//                     decoration: BoxDecoration(
//                       color: Colors.greenAccent,
//                       borderRadius: BorderRadius.circular(1.8),
//                     ),
//                     child: Text(
//                       '${musics.listenerMonthly}',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.black,
//                         // fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Monthly Listened',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   Text('From Spotify', style: TextStyle(color: Colors.grey)),
//                 ],
//               ),
//             ],
//           ),
//           //Text('${musics.lyrics}'),
//           SizedBox(
//             height: 12,
//           ),
//           Container(
//             height: 200,
//             child: ListView(
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.all(12),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: <Widget>[
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Padding(
//                             padding: const EdgeInsets.only(left: 40.0),
//                             child: Text(
//                               '${musics.styles}',
//                               style: TextStyle(
//                                 fontFamily: 'Pacifico',
//                                 fontSize: 30,
//                               ),
//                             ),
//                           ),
//                           Text('${musics.lyrics}'),
//                           SizedBox(height: 6),
//                           Row(
//                             children: <Widget>[
//                               Text('2018(Y)'),
//                               SizedBox(width: 8),
//                               Text('Album(s)'),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // SingleChildScrollView(
//           //   scrollDirection: Axis.horizontal,
//           //   child: Card(
//           //     child: Row(
//           //       children: <Widget>[
//           //         // Container(
//           //         //   padding: const EdgeInsets.all(8.0),
//           //         //   decoration: BoxDecoration(
//           //         //     border: Border(
//           //         //       top: BorderSide(width: 16.0, color: Colors.lightBlue.shade50),
//           //         //       bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
//           //         //     ),
//           //         //   ),
//           //         //   child: const Text('Flutter in the sky', textAlign: TextAlign.center),
//           //         // )
//           //       ],
//           //     ),
//           //   ),
//           // ),
//           //   ),
//           // ),
//         ],
//       ),
// //      Text('${musics.id}'),
//     );
//   }
// }
//
// // SizedBox(
// //   height: 64,
// //   width: 64,
// //   child: ElevatedButton(
// //     style: ButtonStyle(
// //         backgroundColor: MaterialStateProperty.all<Color>(
// //             Colors.pink.shade300),
// //         shape: MaterialStateProperty.all<
// //             RoundedRectangleBorder>(
// //           RoundedRectangleBorder(
// //             borderRadius: BorderRadius.circular(20),
// //           ),
// //         )),
// //     onPressed: () {},
// //     child: Icon(Icons.add),
// //   ),
// // ),
//
// // SingleChildScrollView(
// //   scrollDirection: Axis.horizontal,
// //   child: Card(
// //     child: Row(
// //       children: <Widget>[
// //         // Container(
// //         //   padding: const EdgeInsets.all(8.0),
// //         //   decoration: BoxDecoration(
// //         //     border: Border(
// //         //       top: BorderSide(width: 16.0, color: Colors.lightBlue.shade50),
// //         //       bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
// //         //     ),
// //         //   ),
// //         //   child: const Text('Flutter in the sky', textAlign: TextAlign.center),
// //         // )
// //       ],
// //     ),
// //   ),
// // ),
// //   ),
// // ),
//
// // SingleChildScrollView(
// //   child: Container(
// //     child: Column(
// //       children: [
// //         Text('${musics.lyrics}'),
// //       ],
// //     ),
// //   ),
// // ),
// // Row(
// //   children: <Widget>[
// //     Container(
// //       padding: EdgeInsets.all(6),
// //       decoration: BoxDecoration(
// //         color: Colors.white,
// //         borderRadius: BorderRadius.circular(1.8),
// //       ),
// //       child: Text(
// //         '${musics.listenerMonthly}',
// //         style: TextStyle(
// //           fontSize: 16,
// //           color: Colors.black,
// //           // fontWeight: FontWeight.w600,
// //         ),
// //       ),
// //     ),
// //   ],
// // ),
//
// // Row(
// //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //   children: <Widget>[
// //     Column(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: <Widget>[
// //         IconButton(
// //           onPressed: () {},
// //           icon: Icon(
// //             Icons.star,
// //             size: 35,
// //           ),
// //         ),
// //         RichText(
// //           text: TextSpan(
// //             style: TextStyle(
// //               color: Colors.black,
// //             ),
// //             children: [
// //               TextSpan(
// //                 text: '${musics.ratio}/',
// //                 style: TextStyle(
// //                   fontSize: 20,
// //                   fontFamily: 'Mochiy Pop One',
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //               TextSpan(
// //                 text: '10\n',
// //                 style: TextStyle(
// //                   fontSize: 15,
// //                 ),
// //               ),
// //               // TextSpan(
// //               //   text: '${musics.listenerMonthly}',
// //               //   style: TextStyle(
// //               //     fontSize: 15,
// //               //     fontWeight: FontWeight.w600,
// //               //   ),
// //               // ),
// //             ],
// //           ),
// //         ),
// //       ],
// //     ),
// //     Column(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: <Widget>[
// //         IconButton(
// //           onPressed: () {},
// //           icon: Icon(
// //             Icons.star_border,
// //           ),
// //         ),
// //         Text('Give your Ratio'),
// //       ],
// //     ),
// //     Column(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: <Widget>[
// //         Container(
// //           padding: EdgeInsets.all(6),
// //           decoration: BoxDecoration(
// //             color: Colors.greenAccent,
// //             borderRadius: BorderRadius.circular(1.8),
// //           ),
// //           child: Text(
// //             '${musics.listenerMonthly}',
// //             style: TextStyle(
// //               fontSize: 16,
// //               color: Colors.black,
// //               // fontWeight: FontWeight.w600,
// //             ),
// //           ),
// //         ),
// //         SizedBox(height: 10),
// //         Text(
// //           'Monthly Listened',
// //           style: TextStyle(
// //             fontSize: 16,
// //             fontWeight: FontWeight.w500,
// //           ),
// //         ),
// //         Text('From Spotify',
// //             style: TextStyle(color: Colors.grey)),
// //       ],
// //     ),
// //   ],
// // ),
