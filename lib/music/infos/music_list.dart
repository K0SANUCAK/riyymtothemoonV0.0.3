import 'package:flutter/cupertino.dart';

class musicList {
  final String song;
  final String lyrics;
  final String id;
  final String styles;
  final String images;
  final double ratio;
  final int year;
  final listenerMonthly;


  musicList({
    required this.year,
    required this.song,
    required this.lyrics,
    required this.id,
    required this.styles,
    required this.images,
    required this.ratio,
    required this.listenerMonthly,
  });

}

