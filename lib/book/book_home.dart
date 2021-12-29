import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'book_api.dart';
import 'detail_book_page.dart';

import 'appbar.dart';

int activeIndex = 0;

class BookList extends StatefulWidget {
  final List<Books> list;
  const BookList({Key? key, required this.list}) : super(key: key);

  @override
  _BookListState createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 220,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(seconds: 2),
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            ),
            itemCount: widget.list.length,
            itemBuilder: (context, index, realIndex) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailBookPage(
                        widget.list[index],
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    image: DecorationImage(
                      image: NetworkImage(
                        widget.list[index].poster,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          buildIndicator(widget.list),
          BookListView(
            list: widget.list,
          )
        ],
      ),
    );
  }
}

Widget buildIndicator(List<Books> list) => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: list.length,
      effect: const JumpingDotEffect(
        dotColor: Colors.white,
        activeDotColor: Colors.redAccent,
      ),
    );

class MyBookApp extends StatefulWidget {
  const MyBookApp({Key? key}) : super(key: key);

  @override
  _MyBookAppState createState() => _MyBookAppState();
}

class _MyBookAppState extends State<MyBookApp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: const Color.fromARGB(19, 30, 52, 255),
              appBar: const Appbar(),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    FutureBuilder<List<Books>>(
                        future: fetchAllBooks(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            return const Center(
                              child: Text('An error has occurred!'),
                            );
                          } else if (snapshot.hasData) {
                            return BookList(list: snapshot.data!);
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        }),

                    //BottomMenu(),
                  ],
                ),
              ))),
    );
  }
}

class BookListView extends StatelessWidget {
  const BookListView({Key? key, required this.list}) : super(key: key);

  final List<Books> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      margin: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailBookPage(
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
                        list[index].poster,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 140,
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
      ),
    );
  }
}
