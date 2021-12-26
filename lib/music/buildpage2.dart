import 'package:flutter/material.dart';

import 'infos/user_musics.dart';

class buildPage2 extends StatelessWidget {
  const buildPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              child: Text(
                'Our Recommendation',
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

          /*Center(
              child: CarouselSlider.builder(
                options: CarouselOptions(height: 200),
                itemCount: 6,
                itemBuilder: (context,index,),
              ),
            ),*/

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
          Divider(
            thickness: 1,
            color: Colors.teal,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              width: 40,
              child: Text(
                'Your Favourites',
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
