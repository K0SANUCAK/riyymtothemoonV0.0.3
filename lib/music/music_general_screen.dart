import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'buildpage1.dart';
import 'buildpage2.dart';
import 'buildpage3.dart';
import 'infos/user_musics.dart';

class MusicGeneralScreen extends StatefulWidget {
  final Widget buildPage;
  const MusicGeneralScreen({Key? key, required this.buildPage})
      : super(key: key);

  @override
  _MusicGeneralScreenState createState() => _MusicGeneralScreenState();
}

class _MusicGeneralScreenState extends State<MusicGeneralScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Color(0x0D0C3EFF),
            appBar: AppBar(
              backgroundColor: Color(0x0D0C3EFF),
              title: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(51, 58, 76, 255),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.white38,
                        ),
                        onPressed: () {},
                      ),
                      labelText: 'Search',
                      labelStyle: TextStyle(color: Colors.white38),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
              ),
              leading: Icon(Icons.menu),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                  ),
                ),
              ],
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0x0D0C3EFF), Colors.brown.shade700],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              /*bottom: TabBar(
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(icon: Icon(Icons.home), text: 'Home'),
                    Tab(icon: Icon(Icons.star), text: 'Favourites'),
                    Tab(
                        icon: Icon(Icons.music_note_sharp),
                        text: 'Today\'s Music'),
                  ],
                )*/
            ),
            body: widget
                .buildPage /*TabBarView(
              children: [
                buildPage1(),
                buildPage2(),
                buildPage3(),
              ],
            )*/
            ),
      ),
    );
  }
}
