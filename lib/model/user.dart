import 'package:riyym/movie/now_showing.dart';

class Users {
  final String? name;
  final String? surName;
  final String? email;
  final List<Movies>? moviesFav;
  final List<String>? musicsFav;
  final List<String>? booksFav;

  Users({
    this.name,
    this.surName,
    this.email,
    this.moviesFav,
    this.musicsFav,
    this.booksFav,
  });
}
