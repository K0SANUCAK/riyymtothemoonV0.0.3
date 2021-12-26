import 'package:flutter/material.dart';
import 'package:riyym/dataBase/firestoredata.dart';
import 'package:riyym/profile/textfield.dart';
void main() {
  runApp(const MyProfile());
}

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Account',
      home: FutureBuilder(
        future: FireStore().getUserInfo(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {

            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.red,
                title: Center(
                  child: const Text('My Account'),
                ),
              ),
              body: ListView(
                children: <Widget>[
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue,
                        Colors.red,
                      ],
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Stack(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.white70,
                              minRadius: 60.0,
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: Icon(
                                  Icons.person,
                                  size: 60,
                                  color: Colors.black,
                                ),
                                radius: 50.0,
                                //backgroundImage: NetworkImage(
                                //  'https://avatars0.githubusercontent.com/u/28812093?s=460&u=06471c90e03cfd8ce2855d217d157c93060da490&v=4'),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                         snapshot.data.name +' ' + snapshot.data.surName,
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          snapshot.data.email,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        TextFieldWidget(
                            label: 'User Mail',
                            text: snapshot.data.email,
                            onChanged: (name) {}),
                        TextFieldWidget(
                            label: 'User Name',
                            text: snapshot.data.name + ' '+ snapshot.data.surName,
                            onChanged: (name) {}),
                        // TextFieldWidget(
                        //     label: 'Password', text: '123', onChanged: (_) {})
                      ],
                    ),
                  )
                ],
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
