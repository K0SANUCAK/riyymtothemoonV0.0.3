
import 'package:flutter/material.dart';
import 'api.dart';


class DetailBookPage extends StatefulWidget {
  final Books book;

  DetailBookPage(this.book);
  @override
  _DetailBookPageState createState() => _DetailBookPageState();
}

class _DetailBookPageState extends State<DetailBookPage> {
  /* _launchURL(String url) async {
  if (Platform.isIOS) {
    if (await canLaunch('https://www.youtube.com/watch?v=$url')) {
      await launch('https://www.youtube.com/watch?v=$url', forceSafariVC: false);
    } else {
      if (await canLaunch('https://www.youtube.com/watch?v=$url')) {
        await launch('https://www.youtube.com/watch?v=$url');
      } else {
        throw 'Could not launch https://www.youtube.com/watch?v=$url';
      }
    }
  } else {
    url = 'https://www.youtube.com/watch?v=$url';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
}
 }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          // icon: Icon(Icons.bookmark_border),
          /* IconButton(
            onPressed: null,
            icon: Icon(Icons.favorite),
            color: Colors.redAccent,
            hoverColor: Colors.yellow,
          )*/
        ],
      ),
      backgroundColor: Colors.black87,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 500,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  widget.book.poster,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black87,
                    //Colors.lightBlueAccent.withOpacity(0.8),
                    //Colors.lightBlueAccent.withOpacity(0.6),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 15, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.book.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    /*Text(
                      "${widget.movie.year}, ${widget.movie.title}, ${widget.movie.title} Min.",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),*/
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          widget.book.author,
                          style: const TextStyle(
                            color: Colors.yellow,
                            fontSize: 17,
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Description",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text(
              widget.book.description,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          /*if (widget.movie.casts.length > 0) ...[
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  "Cast",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 100,
                padding: EdgeInsets.only(left: 15, top: 10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.movie.casts.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  widget.movie.casts[index].image,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            widget.movie.casts[index].name,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )*/
        ]),
      ),
    );
  }
}
