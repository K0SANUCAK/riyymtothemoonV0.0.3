/*import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

Future<Filmm>? fetchMovie() async {
    try {
      final response = await http
          .get(Uri.parse('https://fake-movie-database-api.herokuapp.com/api?s=batman'));
      Map dataMap = jsonDecode(response.body);
      var movies = Filmm.fzromJson(dataMap);
      return movies;
    } catch (e) {
      print(e);
      return null;
     
    }
  }*/