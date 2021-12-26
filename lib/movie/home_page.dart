import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'film.dart';

class MovieHomePage extends StatefulWidget {
  const MovieHomePage({Key? key}) : super(key: key);

  @override
  _MovieHomePageState createState() => _MovieHomePageState();
}

class _MovieHomePageState extends State<MovieHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(21, 28, 54, 255),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(51, 58, 76, 255),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
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
        ),
        backgroundColor: Colors.black,
        //body: Film(),
        body: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Text(
                      "What would you like to watch today?",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: TextButton(
                      child: Image.asset('images/film.jpg'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Film()));
                      },
                    )),
                    Expanded(
                        child: TextButton(
                      child: Image.asset('images/tvseries.png'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Film()));
                      },
                    ))
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Text(
                      "My Movies and TV-Series",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.0),
              Container(
                width: double.infinity,
                height: 230.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: MovieCard('1917', '8.3/10', 'images/film1.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: MovieCard(
                          'Avengers: Endgame', '8.4/10', 'images/film2.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: MovieCard('Room', '8.1/10', 'images/film3.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: MovieCard(
                          'Dune: Part One', '8.2/10', 'images/film4.jpg'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget MovieCard(String movieName, String rate, String imgPath) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Card(
          elevation: 0.0,
          child: Image.asset(imgPath,
              fit: BoxFit.fill, width: 120.0, height: 150.0),
        ),
        SizedBox(height: 5.0),
        Text(
          movieName,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13.0),
          textAlign: TextAlign.start,
        ),
        SizedBox(height: 5.0),
        Text(
          rate,
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        )
      ],
    ),
  );
}
