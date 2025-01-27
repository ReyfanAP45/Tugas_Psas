import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final profil = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/apo.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Selamat datang',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final paragraf1 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'welcome,  saya reyfan andika pratama, Sering dipanggil reyfan (di rumah) dan  (di kampus).',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );
    
    final paragraf2 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Saat ini, saya adalah freelance di salah satu instansi di Kabupaten bandung.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final paragraf3 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Pernah menempuh pendidikan di STMIK Widya Pratama Pekalongan mengambil program studi Teknik Informatika.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[profil, welcome, paragraf1,paragraf2,paragraf3],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}