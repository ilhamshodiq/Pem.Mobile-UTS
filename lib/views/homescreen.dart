import 'package:flutter/material.dart';
import 'package:mobile_uts/models/dota_hero.dart';
import 'package:mobile_uts/views/detail.dart';

class HomeScreenPage extends StatelessWidget {
  final List<DotaHero> hero = [
    DotaHero(
        'Tinker',
        'Senin, 24 Oktober 2022',
        'Dibandingkan dengan sihir, studi tentang hukum alam jauh lebih konsisten, tetapi tidak kalah berbahayanya. Dari laboratorium bawah tanah mereka, Boush dan rekan-rekannya membuka portal ke dunia yang jauh, sebuah alat angkut di mana kengerian yang tak terhitung mulai masuk ke dunia ini. Laser memotong jalannya menuju kebebasan, Boush muncul sebagai satu-satunya Tinker yang selamat dari insiden Violet Plateau. Dilengkapi dengan alat yang cocok untuk peneliti gila, ia meluncurkan Rudal Pencari Panas dari bahunya, menembakkan Warping Flare untuk membuat musuhnya terkilir. Tanpa terhalang oleh penundaan sihir, Tinker Mempersenjatai kembali gadget ofensifnya yang mematikan dan Matriks Pertahanan dengan cepat, tanpa membuang waktu untuk menghancurkan apa pun yang menghalangi jalannya.',
        'https://static.wikia.nocookie.net/dota2_gamepedia/images/e/e3/Cosmetic_icon_Fortified_Fabricator.png/revision/latest?cb=20160604010148'),
    DotaHero(
        'Lone Druid',
        'Selasa, 25 Oktober 2022',
        'Dipilih oleh kekuatan alam karena kebijaksanaannya yang mendalam, Sylla adalah satu-satunya yang tersisa dari klannya yang terlupakan. The Lone Druid diikuti oleh Spirit Bear-nya, pendamping kuat yang menjerat musuh, dan menghancurkan struktur. Suara Savage Roar sering kali diperlukan untuk menakut-nakuti musuh dari hutan. Jika tidak, maka pasangan ini akan mensinergikan Spirit Link, meningkatkan kecepatan dan daya tahan mereka saat mereka menjelajahi daratan untuk mencari penyusup. Manusia atau beruang, perbedaannya tidak selalu jelas. Ketika situasi membutuhkannya, Lone Druid mengambil Bentuk Sejatinya, dan bergabung dengan mêlée untuk melawan cakar-ke-cakar bersama beruangnya.',
        'https://static.wikia.nocookie.net/dota2_gamepedia/images/7/73/Cosmetic_icon_Rage_of_the_Dark_Wood.png/revision/latest?cb=20160212031743'),
    DotaHero(
        'Terrorblade',
        'Rabu, 26 Oktober 2022',
        'Dinding fraktal Foulfell tidak hanya gagal menahan Terrorblade, tetapi juga memberinya kendali baru atas Refleksi bengkoknya. The Demon Marauder Conjure Gambar dirinya, membingungkan musuh dan melipatgandakan kerusakannya. Memakan amarah dan semangatnya sendiri, Terrorblade berubah menjadi bentuk yang lebih mengesankan; Metamorfosis tidak suci yang memungkinkan dia untuk melemparkan energi iblis dari jarak jauh dan mengirimkan Gelombang Teror yang menggetarkan musuh-musuhnya. Musuh yang berpengalaman tahu bahwa iblis yang terluka masih jauh dari kalah. Di ambang kematian, Terrorblade memberi tip pada timbangan, menghilangkan kebutuhan untuk mundur saat ia menukar kesehatannya yang terkuras dengan kesehatan lawannya, Memotong hati mereka oleh rasa takut.',
        'https://static.wikia.nocookie.net/dota2_gamepedia/images/c/cc/Cosmetic_icon_Foulfell_Corruptor.png/revision/latest?cb=20171005110451'),
    DotaHero(
        'Broodmother',
        'Kamis, 27 Oktober 2022',
        'Menghuni tabung lava di bawah kaldera Gunung Pyrotheos, Black Arachnia bosan dengan petualang baru-baru ini yang menginjak banyak keturunannya. Maka, Ibu Pertiwi berangkat untuk menyingkirkan dunia dari setiap penyusup potensial, satu pahlawan pada satu waktu. Tubuh yang hangat membuat pembibitan yang ideal, fakta yang tidak hilang di Black Arachnia saat dia menyuntikkan telurnya ke musuh yang sekarat ke Spawn Spiderlings. Di sebidang tanah dia Memutar Jaring Serat Sutera, melindungi dirinya di dalam untuk memulihkan luka atau meletakkan Jerat untuk menangkap mangsanya. Didorong oleh Kelaparan yang Tak Terpuaskan, sang induk semang menjadi hiruk-pikuk makan, menyedot cairan vital dari pahlawan yang berkeliaran dengan setiap gigitan, mengisi kembali dirinya untuk siklus spawn berikutnya.',
        'https://static.wikia.nocookie.net/dota2_gamepedia/images/8/81/Cosmetic_icon_Amber_Queen.png/revision/latest?cb=20190501215753'),
    DotaHero(
        'Nature\'s Prophet',
        'Jum\'at, 25 Oktober 2022',
        'Ditanam sebagai benih oleh dewi Verodicia, dan tumbuh dari sisa-sisa tubuhnya sendiri, Nabi Alam bangkit pada titik balik musim semi untuk mempertahankan dunia yang hijau. Berbakat dengan pandangan ke depan, Nabi Alam tampaknya ada di mana-mana pada saat itu juga. Menjebak musuh dengan cincin pohon Tumbuh dari lantai hutan dan Teleport sesuka hati ke lokasi mana pun. Pepohonan di sekitarnya berfungsi sebagai objek kekuasaannya; menggunakan mereka, dia langsung memanggil Sentient Army dari pohon-pohon kekerasan untuk memperjuangkannya, dia menyerang di tempat yang paling tidak diharapkan musuh. Menyalurkan kemarahan sang dewi, Nabi menyerang setiap penyusup di negeri itu, menjatuhkan Kutukan Pertumbuhan Lama dan Kemurkaan Alam pada semua orang yang akan membahayakan ciptaan Verodicia. ',
        'https://static.wikia.nocookie.net/dota2_gamepedia/images/1/1e/Cosmetic_icon_Desert_Bloom.png/revision/latest?cb=20210724211800'),
  ];

  HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
            const Text('Dota 2 Heroes', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: ListView.builder(
            itemCount: hero.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPage(
                                hero: hero[index],
                              )));
                },
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(height: 84, width: 84,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(hero[index].gambar),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(hero[index].nama, style: Theme.of(context).textTheme.headline5),
                            ),
                            Row(
                              children: [
                                const Icon(Icons.calendar_month_rounded, size: 20),
                                const SizedBox(width: 2),
                                Text(hero[index].tanggal, style: const TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
