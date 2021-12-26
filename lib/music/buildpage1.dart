import 'package:flutter/material.dart';

import 'infos/user_musics.dart';

class buildPage1 extends StatelessWidget {
  const buildPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12),
      child: ListView(
        children: <Widget>[
          Container(
            height: 40,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Chip(
                    label: Text(
                      'All Categories',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.deepOrangeAccent,
                    padding: EdgeInsets.only(left: 15, right: 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Chip(
                    label: Text(
                      'Rap',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.blueGrey,
                    padding: EdgeInsets.only(left: 15, right: 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Chip(
                    label: Text(
                      'Pop',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.blueGrey,
                    padding: EdgeInsets.only(left: 15, right: 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Chip(
                    label: Text(
                      'Rock',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.blueGrey,
                    padding: EdgeInsets.only(left: 15, right: 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Chip(
                    label: Text(
                      'Others',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.blueGrey,
                    padding: EdgeInsets.only(left: 15, right: 12),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Divider(
            thickness: 1,
            color: Colors.teal,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              child: Text(
                'TOP Musics',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          musicListView(),
          Divider(
            thickness: 1,
            color: Colors.teal,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              width: 40,
              child: Text(
                'Random Type',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            width: double.infinity,
            height: 224,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: UserMusicss(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class musicListView extends StatelessWidget {
  const musicListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 224,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: UserMusicss(),
          ),
        ],
      ),
    );
  }
}
