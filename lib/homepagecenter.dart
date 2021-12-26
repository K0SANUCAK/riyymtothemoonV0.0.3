import 'package:flutter/material.dart';
import 'package:riyym/music/buildpage1.dart';

class homepagecenter extends StatefulWidget {
  const homepagecenter({Key? key}) : super(key: key);

  @override
  State<homepagecenter> createState() => _homepagecenterState();
}

class _homepagecenterState extends State<homepagecenter> {
  int check = 1;
  double sz1 = 40;
  double sz2 = 40;
  double sz3 = 40;
  Color clr = Colors.blueGrey;
  Color clr1 = Colors.blueGrey;
  Color clr2 = Colors.blueGrey;
  Icon icon = const Icon(Icons.menu);
  IconData iconData = Icons.headphones;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.red,
          ],
        )),
        child: Stack(
          children: [
            LayoutBuilder(builder: (context, constraint) {
              return Icon(iconData, size: constraint.biggest.height);
            }),
            Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(24.0),
                            child: Text(
                              'RIYYM',
                              style: TextStyle(
                                fontSize: 48.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            color: Colors.transparent,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            child: InkWell(
                                splashColor: Colors.black, // Splash color
                                onTap: () {
                                  setState(() {
                                    check = 1;
                                    iconData = Icons.movie_creation_outlined;
                                    sz1 = 60;
                                    sz3 = 30;
                                    sz2 = 30;
                                  });
                                },
                                child: Column(
                                  children: [
                                    icon = Icon(
                                      Icons.movie_creation_outlined,
                                      size: sz1,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '-',
                                      style: TextStyle(
                                          fontSize: sz1, color: Colors.white),
                                    )
                                  ],
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            color: Colors.transparent,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            child: InkWell(
                                splashColor: Colors.black, // Splash color
                                onTap: () {
                                  setState(() {
                                    check = 2;
                                    iconData = Icons.book;
                                    clr = Colors.red;
                                    sz2 = 60;
                                    sz1 = 30;
                                    sz3 = 30;
                                  });
                                },
                                child: Column(
                                  children: [
                                    icon = Icon(
                                      Icons.book,
                                      size: sz2,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '-',
                                      style: TextStyle(
                                          fontSize: sz2, color: Colors.white),
                                    )
                                  ],
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            color: Colors.transparent,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            child: InkWell(
                                splashColor: Colors.black, // Splash color
                                onTap: () {
                                  setState(() {
                                    check = 3;
                                    iconData = Icons.headphones;
                                    clr = Colors.red;
                                    sz2 = 30;
                                    sz1 = 30;
                                    sz3 = 60;
                                  });
                                },
                                child: Column(
                                  children: [
                                    icon = Icon(
                                      Icons.headphones,
                                      size: sz3,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '-',
                                      style: TextStyle(
                                          fontSize: sz3, color: Colors.white),
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        check == 1
                            ? const musicListView()
                            : (check == 2
                                ? const musicListView()
                                : const musicListView())
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
