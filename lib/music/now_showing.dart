import 'dart:convert';
import 'package:http/http.dart' as http;

class Musics {
  final int imdbId;
  final String poster;
  final String title;

  Musics(
      {required this.imdbId,
      required this.title,
      required this.poster,
});

  factory Musics.fromJson(Map<String, dynamic> json) {
    return Musics(
        imdbId: json["id"],
        poster: json["album"]["cover_medium"],
        title: json["title"]);
  }
}

Future<List<Musics>>? fetchAllMusics() async {
  final response = await http.get(Uri.parse(
      "https://api.deezer.com/chart"));

  if (response.statusCode == 200) {
    final result = jsonDecode(response.body);
    Iterable list = result["tracks"]["data"];
    return list.map((music) => Musics.fromJson(music)).toList();
  } else {
    throw Exception("Failed to load movies!");
  }
}



