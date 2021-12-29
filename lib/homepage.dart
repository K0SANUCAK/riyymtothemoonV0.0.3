import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:full_screen_menu/full_screen_menu.dart';
import 'package:riyym/book/main.dart';
import 'package:riyym/dataBase/authentication.dart';
import 'package:riyym/login_screen.dart';
import 'package:riyym/music/buildpage1.dart';
import 'package:riyym/music/buildpage2.dart';
import 'package:riyym/music/buildpage3.dart';
import 'package:riyym/profile/main.dart';
import 'package:riyym/registration_screen.dart';
import 'bottomappbar.dart';
import 'movie/detail_movie_page.dart';
import 'movie/film.dart';
import 'homepagecenter.dart';
import 'movie/now_showing.dart';
import 'music/music_general.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  int num = 0;

  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  IconData ic1 = Icons.home;
  int _selectedIndex = 3;
  static const List<Widget> _pages = <Widget>[
    Film(),
    MyBookApp(),
    Music(),
    homepagecenter(),
    Music(),
    Music(),
    Music(),
    homepagecenter(),
    MyProfile(),
    LoginScreen(),
    RegistrationScreen(),
    LoginScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(100, 43, 43, 43),
        body: _pages.elementAt(_selectedIndex),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent.withOpacity(0.3),
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 75,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  iconSize: 30.0,
                  //padding: EdgeInsets.only(right: 28.0),
                  icon: Icon(
                    _selectedIndex == 3 || _selectedIndex == 0
                        ? Icons.movie
                        : (_selectedIndex == 2 ||
                                _selectedIndex == 4 ||
                                _selectedIndex == 5 ||
                                _selectedIndex == 6
                            ? Icons.library_music
                            : Icons.book),
                    color: _selectedIndex == 0 ||
                            _selectedIndex == 1 ||
                            _selectedIndex == 2 ||
                            _selectedIndex == 4
                        ? Colors.amber
                        : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      if (_selectedIndex == 2 ||
                          _selectedIndex == 4 ||
                          _selectedIndex == 5 ||
                          _selectedIndex == 6) {
                        _selectedIndex = 4;
                      } else if (_selectedIndex == 3) _selectedIndex = 0;
                    });
                  },
                ),
                IconButton(
                  iconSize: 30.0,
                  // padding: EdgeInsets.only(left: 28.0),
                  icon: Icon(
                    _selectedIndex == 3
                        ? Icons.book
                        : ((_selectedIndex == 2 ||
                                _selectedIndex == 4 ||
                                _selectedIndex == 5 ||
                                _selectedIndex == 6)
                            ? Icons.turned_in
                            : Icons.favorite),
                    color: _selectedIndex == 5 ? Colors.amber : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      if (_selectedIndex == 2 ||
                          _selectedIndex == 4 ||
                          _selectedIndex == 5 ||
                          _selectedIndex == 6) {
                        _selectedIndex = 5;
                      } else if (_selectedIndex == 3) _selectedIndex = 1;
                    });
                  },
                ),
                FutureBuilder<List<Movies>>(
                    future: fetchAllMovies(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return const Center(
                          child: Text('An error has occurred!'),
                        );
                      } else if (snapshot.hasData) {
                        return IconButton(
                          iconSize: 30.0,
                          //padding: EdgeInsets.only(right: 28.0),
                          icon: Icon(
                            _selectedIndex == 3
                                ? Icons.music_note
                                : Icons.shuffle,
                            color: _selectedIndex == 6
                                ? Colors.amber
                                : Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              var rng = new Random();
                              int i = rng.nextInt(20);

                              if (_selectedIndex == 0) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailMoviePage(snapshot.data![i]),
                                  ),
                                );
                              }
                              if (_selectedIndex == 2 ||
                                  _selectedIndex == 4 ||
                                  _selectedIndex == 5 ||
                                  _selectedIndex == 6) {
                                _selectedIndex = 6;
                              } else if (_selectedIndex == 3)
                                _selectedIndex = 2;
                            });
                          },
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }),
                IconButton(
                  iconSize: 30.0,
                  //padding: EdgeInsets.only(left: 28.0),
                  icon: Icon(
                    _selectedIndex == 3 ? Icons.home : Icons.exit_to_app,
                    color: _selectedIndex == 3 ? Colors.amber : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        //bottomNavigationBar: const BtappBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () => showFullScreenMenu(context),
          child: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ));
  }

  void showFullScreenMenu(BuildContext context) {
    FullScreenMenu.show(
      context,
      backgroundColor: Colors.black,
      items: [
        FSMenuItem(
          icon: const Icon(Icons.movie, color: Colors.white),
          text: const Text('Movies', style: TextStyle(color: Colors.white)),
          gradient: blueGradient,
          onTap: () {
            setState(() {
              _selectedIndex = 0;
              FullScreenMenu.hide();
            });
          },
        ),
        FSMenuItem(
          icon: const Icon(Icons.book, color: Colors.white),
          text: const Text('Books', style: TextStyle(color: Colors.white)),
          gradient: redGradient,
          onTap: () {
            setState(() {
              _selectedIndex = 1;
              FullScreenMenu.hide();
            });
          },
        ),
        FSMenuItem(
          icon: const Icon(Icons.music_note, color: Colors.white),
          text: const Text('Musics', style: TextStyle(color: Colors.white)),
          gradient: orangeGradient,
          onTap: () {
            setState(() {
              _selectedIndex = 2;
              FullScreenMenu.hide();
            });
          },
        ),
        FSMenuItem(
          icon: const Icon(Icons.person, color: Colors.white),
          text: const Text('My Account', style: TextStyle(color: Colors.white)),
          gradient: deepPurpleGradient,
          onTap: () {
            setState(() {
              _selectedIndex = 8;
              FullScreenMenu.hide();
            });
          },
        ),
        FSMenuItem(
          icon: Icon(Icons.logout, color: Colors.white),
          text: Text('LogOut', style: TextStyle(color: Colors.white)),
          onTap: () async {
            FullScreenMenu.hide();
            var logOut = await Authentication().logOut();
            if (logOut == 'true') {
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }), (route) => false);
            } else {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text(logOut),
                  );
                },
              );
            }
          },
        ),
      ],
    );
  }
}

class BtappBar extends StatelessWidget {
  const BtappBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FABBottomAppBar(
      color: Colors.grey,
      // ignore: deprecated_member_use
      selectedColor: Theme.of(context).accentColor,
      notchedShape: const CircularNotchedRectangle(),
      onTabSelected: (index) {},
      items: [
        FABBottomAppBarItem(
            iconData: Icons.slow_motion_video_outlined, text: 'Populars', a: 0),
        FABBottomAppBarItem(iconData: Icons.pages, text: 'News', a: 1),
        FABBottomAppBarItem(iconData: Icons.shuffle, text: 'Suggest', a: 2),
        FABBottomAppBarItem(iconData: Icons.info, text: 'About', a: 3),
      ],
      centerItemText: 'RIYYM',
      backgroundColor: Colors.black,
    );
  }
}
