/*import 'dart:convert';



Filmm movieFromJson(String str) => Filmm.fromJson(json.decode(str));

String movieToJson(Filmm data) => json.encode(data.toJson());

class Filmm {
  Filmm({
    required this.search,
  });

  List<Search>? search;

  factory Filmm.fromJson(Map<dynamic, dynamic> json) => Filmm(
    search: json["Search"] == null ? null : List<Search>.from(json["Search"].map((x) => Search.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Search": search == null ? null : List<dynamic>.from(search!.map((x) => x.toJson())),
  };
}

class Search {
  Search({
    required this.imdbId,
    required this.title,
    required this.year,
    required this.poster,
  });

  String imdbId;
  String title;
  String year;
  String poster;

  factory Search.fromJson(Map<String, dynamic> json) => Search(
    imdbId: json["imdbID"],
    title: json["Title"],
    year: json["Year"],
    poster: json["Poster"],
  );

  Map<String, dynamic> toJson() => {
    "imdbID": imdbId,
    "Title": title,
    "Year": year,
    "Poster": poster,
  };
}*/