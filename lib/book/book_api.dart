import 'dart:convert';
import 'package:http/http.dart' as http;

class Books {
  final int id;
  final String poster;
  final String title;
  final String author;
  final String description;

  Books(
      {required this.id,
        required this.title,
        required this.poster,
        required this.author,
        required this.description,
 });

  factory Books.fromJson(Map<String, dynamic> json) {
    return Books(
        id: json["rank"],
        poster: json["book_image"],
        title: json["title"],
      author:  json["author"],
        description: json["description"]
);
  }
}

Future<List<Books>>? fetchAllBooks() async {
  final response = await http.get(Uri.parse("https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=5BPcZUFOdQeCz1idrhcNvQz0MIFAx34I"));

  if (response.statusCode == 200) {
    final result = jsonDecode(response.body);
    Iterable list = result["results"]["books"];
    return list.map((book) => Books.fromJson(book)).toList();
  } else {
    throw Exception("Failed to load books!");
  }
}