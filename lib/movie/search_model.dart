import 'package:flutter/material.dart';

import 'now_showing.dart';

class SearchPage extends StatelessWidget {
   SearchPage(this.word, {Key? key}) : super(key: key);
   String word;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Search>>(
          future: fetchSearch(word),
          builder: (context, snapshot) {
            print(snapshot.error);
            if (snapshot.hasError) {
              return const Center(
                child: Text('An error has occurred!'),
              );
            } else if (snapshot.hasData) {
              return SearchList(snapshot.data!);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
  Widget SearchList(List<Search> list) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context,int index){
          return ListTile(
              leading: Icon(Icons.list),
              trailing: Text("Kıps",
                style: TextStyle(
                    color: Colors.green,fontSize: 15),),
              title:Text(list[index].name)
          );
        }
    );
  }
}
