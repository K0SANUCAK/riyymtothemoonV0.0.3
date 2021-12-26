/*import 'package:flutter/material.dart';
import 'package:untitled1/book/api.dart';

class Recommended extends StatefulWidget {
  const Recommended(List<Books> list, {Key? key}) : super(key: key);

  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Recommended Books',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(
                height: 200,
                child: GridView.builder(

                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    Text("");
                  },
                  children: [
                    Image.network(
                        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1606106010l/53330118.jpg'),
                    Image.network(
                        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1606321459l/53231851.jpg'),
                    Image.network(
                        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1616514130l/55145261.jpg'),
                    Image.network(
                        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1607107025l/53238858.jpg'),
                  ],
                ))
          ],
        ),
      ],
    );
  }
}
*/