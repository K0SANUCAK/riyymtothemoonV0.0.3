import 'package:flutter/material.dart';

class buildPage3 extends StatelessWidget {
  const buildPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12),
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: Image(
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  image: AssetImage('images/sehabe.png'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.only(left: 30),
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30,
                    color: Colors.black,
                  ),
                  Image(
                    image: AssetImage('images/RIYYMmusic.png'),
                    height: 60,
                    width: 150,
                  ),
                  IconButton(
                    padding: EdgeInsets.only(right: 30.0),
                    onPressed: () => print('Add to Favorites'),
                    icon: Icon(Icons.favorite_border),
                    iconSize: 30.0,
                    color: Colors.black,
                  ),
                ],
              ),
              Positioned(
                bottom: 20,
                left: 30,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 50,
                        color: Colors.black12.withOpacity(0.4),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 20,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  iconSize: 40,
                  color: Colors.black,
                ),
              ),
              Positioned(
                bottom: 0.0,
                right: 25.0,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share),
                  iconSize: 35.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Sehabe - Bu Günah Sayılır Mı?',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.0),
                Text(
                  'Rap',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 12.0),
                Text(
                  '⭐ ⭐ ⭐ ⭐',
                  style: TextStyle(fontSize: 25.0),
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'Year',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(height: 2.0),
                        Text(
                          '2017',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Monthly Listened',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(height: 2.0),
                        Text(
                          '214528',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Ratio',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(height: 2.0),
                        Text(
                          '8.7',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 25.0),
                Container(
                  height: 220.0,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[800],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Bu günah sayılır mı\n'
                        'Söz üstüne söz koyamadım\n'
                        'Aklım uçarak uzaklaşır\n'
                        'Adaleti at çöpe nasılsa yok ihtiyacın\n'
                        '\n'
                        'İnsan olana bir kere söylersin en fazla iki\n'
                        'Şu an içimde ne umut var ne kin\n'
                        'Hak yemek mi?\n'
                        '(Hak yemek mi?)\n'
                        'Canın sağ olsun peki\n'
                        'Senin için önemli olan onlar için ne ki\n'
                        '\n'
                        'O gece eve geldik ama araçtan inmedi gönlüm\n'
                        'Virgin’da çalacak diye biz bir tur daha döndük\n'
                        'Heyecanlıyız be kanka, gören ilk gün sanar\n'
                        'Sanki Mp3’ten dinletir gibi ilk insana\n'
                        '\n'
                        'Ama bazen kafam kalbim kadar tam dağınık2\n'
                        'Magazinden beslenmez dinleyiciyle kan bağımız\n'
                        'Eyvallahın yoksa kimseye zor zamanlar\n'
                        'Biz müzik yaparız birçoğu ticaret farkı anla\n'
                        '\n'
                        'Bu günah sayılır mı\n'
                        'Söz üstüne söz koyamadım\n'
                        'Aklım uçarak uzaklaşır\n'
                        'Adaleti at çöpe nasılsa yok ihtiyacın\n'
                        '\n'
                        'Listede ilk üçteyiz bilir her yer bizi\n'
                        'Muud ya da Deezer Fizy YouTube ve Apple Music\n'
                        'Klipler trendlerden inmez yapılan hiç hoş değil\n'
                        'Boykotu bıraktığınız gün ilk 5’teyim\n'
                        '\n'
                        'Biz Yeis’le iki kardeş bir çorba yemektik\n'
                        'Hip-Hop özgürlük eşitlik ve mücadele demekti\n'
                        'Artık sıra bizim gözler üstümüzde bolca\n'
                        'Boykotu bırakmasalar da er geç olcak\n'
                        '\n'
                        'Bencillik mi adil olsun demek?\n'
                        'Hak aramak?\n'
                        'Hayvan ya da kadın haklarında da susmayan bendim\n'
                        'Ali ata bak (bak)\n'
                        'Işık ılık süt iç\n'
                        'Diye yapsam daha mı cok severdin\n'
                        '\n'
                        'Bu günah sayılır mı\n'
                        'Söz üstüne söz koyamadım\n'
                        'Aklım uçarak uzaklaşır\n'
                        'Adaleti at çöpe nasılsa yok ihtiyacın\n',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
