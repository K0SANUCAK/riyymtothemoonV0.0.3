import 'package:flutter/material.dart';

import 'detail_movie_page.dart';
import 'now_showing.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search Results: "),),
      body: FutureBuilder<List<Movies>>(
          future: fetchSearch(),
          builder: (context, snapshot) {
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

  Widget SearchList(List<Movies> list) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: list.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailMoviePage(
                  list[index],
                ),
              ),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                width: 140,
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      list[index].year,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 140,
                height: 50,
                child: Text(
                  list[index].title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
