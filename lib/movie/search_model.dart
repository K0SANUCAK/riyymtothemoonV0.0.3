import 'package:flutter/material.dart';

import 'detail_movie_page.dart';
import 'now_showing.dart';

class SearchPage extends StatelessWidget {
   SearchPage(this.word, {Key? key}) : super(key: key);
   String word;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Search>>(
          future: fetchSearch(word),
          builder: (context, snapshot) {
            print(snapshot.error);
            if (snapshot.hasError) {
              return const Center(
                child: Text('An error has occurred!'),
              );
            } else if (snapshot.hasData) {
              return SearchList(snapshot.data!);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }


  Widget SearchList(List<Search> list) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context,int index){
          return ListTile(
              leading: Image.network(list[index].poster),
              trailing: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailMoviePage(
                        convert(list[index]),
                      ),
                    ),
                  );
                },
                child: Text("Kıps",
                  style: TextStyle(
                      color: Colors.green,fontSize: 15),),
              ),
              title:Text(list[index].name)
          );
        }
    );
  }
  Movies convert(Search s){
    Movies m=Movies(imdbId: s.key, title: s.name, poster: s.poster, year: s.year, vote_average: s.vote_average, overview: s.overview);
    return m;
  }
}
