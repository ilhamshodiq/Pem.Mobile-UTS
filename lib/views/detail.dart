import 'package:flutter/material.dart';
import 'package:mobile_uts/models/dota_hero.dart';

class DetailPage extends StatelessWidget {
  final DotaHero hero;
  const DetailPage({Key? key, required this.hero}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bagianJudul = Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(hero.nama,
                      style: Theme.of(context).textTheme.headline6),
                ),
                Text(
                  hero.tanggal,
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget bagianDeskripsi = Container(
      padding: const EdgeInsets.all(16),
      child: Text(
        hero.deskripsi,
        style: Theme.of(context).textTheme.bodyText1,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(hero.nama),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 0),
        children: <Widget>[
          Image.network(
            hero.gambar,
            height: MediaQuery.of(context).size.height / 2,
            fit: BoxFit.cover,

          ),
          bagianJudul,
          bagianDeskripsi,
        ],
      ),
    );
  }
}
