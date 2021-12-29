import 'package:flutter/material.dart';

import 'detail_movie_page.dart';
import 'movie_api.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  SearchPage(this.word, {Key? key}) : super(key: key);
  String word;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Search>>(
          future: fetchSearch(word),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('An error has occurred!'),
              );
            } else if (snapshot.hasData) {
              return searchList(snapshot.data!);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  Widget searchList(List<Search> list) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              leading: Image.network(list[index].poster !=
                      "https://www.themoviedb.org/t/p/w533_and_h300_bestv2null"
                  ? list[index].poster
                  : "https://www.incimages.com/uploaded_files/image/1024x576/getty_525041723_970647970450098_70024.jpg"),
              trailing: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailMoviePage(
                        convert(list[index]),
                      ),
                    ),
                  );
                },
                child: const Text(
                  "Kıps",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
              ),
              title: Text(list[index].name));
        });
  }

  Movies convert(Search s) {
    Movies m = Movies(
        imdbId: s.key,
        title: s.name,
        poster: s.poster,
        year: s.year,
        vote_average: s.vote_average,
        overview: s.overview);
    return m;
  }
}
