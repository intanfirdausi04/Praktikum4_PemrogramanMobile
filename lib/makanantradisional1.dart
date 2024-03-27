import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Makanan Tradisional Jawa Timur',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selamat Datang di Kuliner Jawa Timur'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
            'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/04/08/Makanan-khas-Ramadhan-Jatim-2455502434.jpg', // Ganti dengan URL gambar yang sesuai dari Google
             width: 300,
              height: 200,
              fit: BoxFit.cover,
              ),

            SizedBox(height: 20),
            Text(
              'Jelajahi Kelezatan Kuliner Jawa Timur',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodList(),
                  ),
                );
              },
              child: Text('Lihat Daftar Makanan'),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodList extends StatelessWidget {
  final List<Map<String, String>> foodData = [
    {
      'name': 'Rawon',
      'description':
          'Rawon adalah masakan tradisional Indonesia yang khas dari daerah Jawa Timur. Ini adalah semacam sup daging hitam yang kaya akan rempah-rempah dan memiliki cita rasa yang kuat dan khas. Bahan utamanya adalah daging sapi yang dimasak dalam kaldu yang diberi warna hitam oleh kluwek, sejenis buah yang kering dan berwarna hitam. Rempah-rempah lain yang sering digunakan termasuk serai, lengkuas, jahe, bawang merah, bawang putih, dan ketumbar. Rawon biasanya disajikan dengan nasi putih, telur asin, tauge, irisan mentimun, dan sambal.',
      'ingredients': '1. Daging sapi (500 gram) \n2. Kluwek (6 biji) \n3. Serai (2 batang) \n4. Lengkuas (3 cm) \n5. Jahe (2 cm) \n6. Bawang Merah (5 siung) \n7. Bawang putih (3 siung) \n8. Ketumbar (1 sdt) \n9. Kunyit (2 cm) \n10. Minyak (2 sdm) \n11. Garam (secukupnya) \n12. Gula (secukupnya) \n13. Daun jeruk purut (3 lembar) \n14. Air (2 liter) \n15. Tauge (sesuai selera) \n16. Sambal (sesuai selera)',
      'recipe':
          '1. Persiapkan Kluwek : Cuci bersih kluwek, kemudian remas-remas hingga lembut dan keluarkan isinya. Setelah itu, rendam kluwek dalam air hangat selama sekitar 15-30 menit. \n2. Tumis Bumbu : Panaskan minyak dalam panci besar. Tumis bumbu halus (bawang merah, bawang putih, jahe, lengkuas, dan serai) hingga harum dan matang. \n3. Tambahkan Daging : Masukkan potongan daging sapi ke dalam panci. Aduk-aduk hingga daging berubah warna dan tercampur dengan bumbu. \n4. Tambahkan Kluwek dan Air : Setelah daging matang, tambahkan kluwek yang sudah diremas dan air secukupnya ke dalam panci. Aduk rata dan biarkan mendidih. \n5. Bumbu Tambahan : Setelah mendidih, tambahkan daun jeruk purut (jika digunakan), garam, gula, dan bubuk ketumbar. Aduk rata dan biarkan masak dengan api kecil selama sekitar 1,5-2 jam hingga daging empuk dan kuah mengental. \n6. Penyajian : Setelah matang, cicipi kuah dan sesuaikan rasa dengan garam dan gula jika diperlukan. Sajikan rawon panas dengan nasi putih, tauge, dan sambal sebagai pelengkap. \n7. Hidangkan : Tuangkan rawon ke dalam mangkuk, letakkan pelengkapnya di atasnya, dan sajikan hangat.',
      'imageURL':
          'https://storage.googleapis.com/narasi-production.appspot.com/production/medium/1690883765380/rawon-jadi-sup-paling-enak-di-dunia-berikut-fakta-dan-cara-membuat-rawon-di-rumah-medium.jpeg',
    },
    {
      'name': 'Soto Ayam',
      'description':
          'Soto ayam adalah hidangan tradisional Indonesia yang terkenal dengan kuah kaldu ayam yang kaya rempah dan aroma yang harum. Kuahnya yang hangat dan lezat dihasilkan dari rebusan ayam dengan tambahan rempah-rempah seperti serai, daun jeruk, jahe, bawang merah, dan bawang putih. Daging ayam yang diiris tipis kemudian disajikan dalam kuah tersebut bersama dengan mie kuning, irisan telur rebus, tauge, daun seledri, dan bawang goreng sebagai hiasan. Soto ayam sering disajikan dengan tambahan pelengkap seperti sambal, kecap manis, atau kerupuk, yang menambahkan dimensi rasa yang kaya dan beragam. Hidangan ini tidak hanya lezat, tetapi juga memberikan kenyamanan dan kehangatan, membuatnya menjadi hidangan yang sangat populer di Indonesia, baik sebagai sarapan, makan siang, maupun makan malam.',
      'ingredients': '1. Ayam (1 ekor ayam) \n2. Air (secukupnya) \n3. Serai (2 batang) \n4. Daun jeruk purut (3 lembar) \n5. Jahe (3 cm) \n6. Bawang Putih (4 siung) \n7. Daun bawang (2 batang) \n8. Garam (secukupnya) \n9. Gula (secukupnya) \n10. Mie kuning (2 pcs)  \n11. Telur rebus (3 potong) \n12. Tauge (sesuai selera) \n13. Bawang merah goreng (sesuai selera) \n14. Daun seledri (2 batang) \n15. Jeruk nipis (2 buah) \n16. Sambal (sesuai selera)',
      'recipe':
          '1. Rebus Ayam : Masukkan potongan ayam ke dalam panci besar dan tambahkan air secukupnya hingga ayam terendam. Rebus ayam hingga matang dan kaldu terbentuk, dan buang kotoran yang mengapung di permukaan. \n2. Tambahkan Bumbu : Setelah ayam matang, tambahkan serai, daun jeruk purut, jahe, dan bawang putih ke dalam panci. Biarkan bumbu-bumbu tersebut meresap ke dalam kaldu dengan memasaknya dengan api sedang selama sekitar 30-45 menit. \n3. Beri Rasa : Tambahkan garam dan gula secukupnya sesuai dengan selera Anda. Jika diinginkan, tambahkan juga kaldu ayam instan untuk penambah rasa. Aduk rata dan biarkan kuah mendidih lagi. \n4. Sajikan : Ambil potongan ayam dari kaldu dan suwir-suwir dagingnya. Sisihkan daging ayam dalam mangkuk. \n5. Susun Pelengkap : Di mangkuk yang berisi suwiran ayam, tambahkan mie kuning yang sudah direbus, potongan telur rebus, tauge, daun seledri, dan bawang merah goreng. \n6. Tuangkan Kuah : Siramkan kuah panas ke dalam mangkuk yang berisi ayam dan pelengkap. \n7. Hidangkan : Sajikan soto ayam panas dengan irisan jeruk nipis (jika menggunakan), sambal, dan kecap manis di sampingnya. \n8. Nikmati : Soto ayam siap dinikmati sebagai hidangan hangat dan lezat.',
      'imageURL':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkQ0YpM6WmZ64HSVyp5_b9CXW0JyCeB5RswRXojxzDXw&s',
    },
    {
      'name': 'Lontong Balap',
      'description':
          'Lontong Balap adalah salah satu makanan tradisional Jawa Timur yang terdiri dari lontong, tauge, tahu goreng, lentho (bakso dari kacang hijau), dan irisan mentimun. Makanan ini disajikan dengan kuah kacang yang gurih dan taburan bawang goreng. Kuah kacangnya dibuat dari bumbu rempah-rempah seperti bawang putih, kencur, dan kacang tanah yang dihaluskan dan direbus hingga mendapat tekstur yang kental dan meresap. Lontong Balap sering disajikan sebagai makanan jajanan atau kudapan di warung-warung pinggir jalan di Jawa Timur. Rasanya yang gurih, teksturnya yang lezat, dan aroma rempah-rempahnya membuatnya menjadi favorit di antara masyarakat Jawa Timur dan pengunjung yang penasaran ingin mencicipi kelezatannya.',
      'ingredients': '1. Lontong (400 gram) \n2. Tauge (200 gram) \n3. Tahu goreng (200 gram) \n4. Lentho atau bakso dari kacang hijau (200 gram) \n5. Bawang goreng (secukupnya) \n6. Bawang Putih (2 siung) \n7. Bawang merah (4 siung) \n8. Garam (1 sdt) \n9. Merica bubuk (secukupnya) \n10. Daun bawang (2 batang)  \n11. Seledri (2 batang) \n12. Kecap manis (secukupnya) \n13. Air (secukupnya) \n14. Petis (2 sesuai selera)',
      'recipe':
          '1. Siapkan semua bahan. Cuci terlebih dahulu kecambah, daun bawang, dan daun seledri, kemudian rajang kasar daun bawang. \n2. Haluskan bahan-bahan bumbu halus (bawang merah, bawang putih, garam, dan merica) sambil rebus air secukupnya, lalu masukkan bumbu halus ke dalam panci. \n3. Kemudian setelah mendidih, masukkan daun bawang dan kecambah, aduk sambil tambahkan kecap secukupnya, lalu aduk kembali. Tunggu sampai mendidih. \n4. Tambahkan daun seledri. Kemudian, matikan kompornya. Sisihkan. \n5. Sajikan dengan lontong, tahu yang sudah dipotong, lentho, lalu taburi dengan bawang goreng. \n6. Tambahkan petis sesuai selera. \n7. Siap dinikmati.',
      'imageURL':
          'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/1005/2024/02/13/Screenshot_20240212-192132_Instagram1-3346308768.jpg',
    },
    {
      'name': 'Sate Klopo',
      'description':
          'Sate Klopo adalah hidangan sate khas Jawa Timur yang terbuat dari potongan daging ayam atau kambing yang ditusuk menggunakan bambu dan disajikan dengan taburan parutan kelapa yang sudah dipanggang. Yang membedakan Sate Klopo dari sate biasa adalah penggunaan kelapa parut yang telah dipanggang sebagai bumbu pelengkapnya. Daging ayam atau kambing yang telah ditusuk kemudian dibakar hingga matang di atas bara api atau panggangan. Setelah matang, sate tersebut kemudian disajikan dengan taburan parutan kelapa yang telah dipanggang hingga garing dan berwarna kecokelatan. Parutan kelapa ini memberikan aroma yang khas dan cita rasa yang lezat pada sate.',
      'ingredients': '1. Daging ayam atau kambing (500 gram) \n2. Tusukan sate (secukupnya) \n3. Kelapa parut (1 butir kelapa) \n4. Garam (1/2 sdt) \n5. Gula (1 sdt) \n6. Gula merah (1 sdt) \n7. Bawang merah (5 siung) \n8. Bawang putih (3 siung) \n9. Kemiri (2 butir) \n10. Jahe (1 ruas jari)  \n11. Lengkuas (2 cm) \n12. Kunyit (1 cm) \n13. Minyak goreng (secukupnya)',
      'recipe':
          '1. Potong daging ayam atau kambing kecil-kecil dan tiris untuk membuat sate. \n2. Haluskan bumbu-bumbu halus (bawang putih, bawang merah, kemiri, jahe, lengkuas, dan kunyit). \n3. Panaskan sedikit minyak goreng dalam wajan. \n4. Tumis bumbu halus hingga harum dan matang. \n5. Masukkan kelapa parut dan aduk rata. \n6. Tambahkan garam dan gula merah. Aduk kembali hingga bumbu tercampur merata dan kelapa parut matang. Angkat dan sisihkan. \n7. Tusuk potongan daging ayam atau kambing ke bambu tusuk sate secara merata. \n8. Panggang sate di atas bara api atau panggangan hingga matang dan berwarna kecokelatan. Balik sate secara teratur agar matang merata. \n9. Sajikan sate yang telah matang dengan taburan bumbu kelapa parut yang telah dipanggang. Anda juga dapat menyajikan saus kacang atau sambal sebagai pelengkap. \n10. Hidangkan sate klopo panas sebagai hidangan utama atau lauk pendamping nasi putih atau lontong.',
      'imageURL':
          'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/06/12/sate-1-2863745727.jpg',
    },
    {
      'name': 'Nasi Tumpeng',
      'description':
          'Nasi Tumpeng khas Jawa Timur memiliki ciri khas yang membedakannya dari versi lainnya. Biasanya, nasi kuningnya dibuat dengan rempah-rempah tradisional Jawa Timur seperti kunyit, serai, daun salam, dan santan, memberikan cita rasa yang kaya dan berbeda. Nasi kuning ini kemudian diatur dalam bentuk kerucut atau gunungan di atas tampah atau nampan besar. Pelengkapnya juga sering kali mengandalkan masakan tradisional Jawa Timur, seperti ayam goreng dengan bumbu khas daerah, tahu goreng, tempe goreng, telur rebus, dan urap sayur yang menggunakan kelapa parut dan bumbu kacang. Sambal dan kerupuk juga merupakan pelengkap yang tidak bisa dilewatkan dalam hidangan ini. Nasi Tumpeng khas Jawa Timur sering dihidangkan dalam acara-acara istimewa seperti pernikahan, syukuran, atau acara adat. Selain sebagai hidangan utama, Nasi Tumpeng juga memiliki makna simbolis yang dalam dalam budaya Jawa Timur, melambangkan keberkahan, kemakmuran, dan kesuksesan bagi yang memakannya. Dengan cita rasa yang lezat dan tampilan yang memukau, Nasi Tumpeng khas Jawa Timur menjadi salah satu warisan budaya kuliner yang sangat dihargai dan dihormati dalam masyarakat Jawa Timur.',
      'ingredients': '1. Beras (500 gram) \n2. Air (600 ml) \n3. Santan kental (200 ml) \n4. Kunyit (3 batang) \n5. Serai (2 batang) \n6. Daun salam (2 lembar) \n7. Garam (1 sdt) \n8. Garam (1 sdt) \n9. Ayam (1 ekor) \n10. Tahu (3 buah)  \n11. Tempe (1 blok) \n12. Telur (5 butir) \n13. Kacang panjang (secukupnya)',
      'recipe':
          '1. Cuci bersih beras, kemudian tambahkan air dan santan ke dalam panci. \n2. Tambahkan kunyit, serai, daun salam, garam, dan gula ke dalam panci. \n3. Masak beras dengan menggunakan panci rice cooker atau cara tradisional hingga matang sempurna dan bumbu meresap. \n4. Aduk rata beras sesekali agar kunyit dan santan tercampur merata. \n4. Rebus atau goreng ayam dengan bumbu sesuai selera hingga matang dan berwarna kecokelatan. \n5. Goreng tahu dan tempe hingga matang dan kecokelatan. \n6. Rebus atau kukus sayuran hingga matang namun masih renyah. \n7. Rebus telur hingga matang, kupas, dan sisihkan. \n8. Siapkan kerupuk sebagai pelengkap. \n9. Tata nasi kuning dalam bentuk gunungan di atas piring atau tampah besar. \n10. Susun ayam, tahu, tempe, telur, dan sayuran di sekitar nasi kuning sebagai pelengkap. \n11. Hiasi dengan kerupuk di sekitarnya. \n12. Nasi Tumpeng khas Jawa Timur siap untuk disajikan sebagai hidangan istimewa dalam acara-acara tradisional atau keluarga.',
      'imageURL':
          'https://awsimages.detik.net.id/community/media/visual/2019/08/16/8bb69230-fcb9-4ed5-8311-77ef022d8425.jpeg?w=1080',
    },
    {
      'name': 'Tiwul',
      'description':
          'Tiwul adalah makanan tradisional yang berasal dari Jawa Timur, Indonesia. Makanan ini terbuat dari tepung sagu yang diolah menjadi bubur atau nasi yang kenyal. Proses pembuatannya melibatkan penggilingan atau penumbukan batang sagu yang sudah dikeringkan dan diproses menjadi tepung. Tepung sagu kemudian dicampur dengan air hingga membentuk adonan yang kental dan kenyal, lalu direbus hingga matang. Hasil akhir dari proses tersebut adalah makanan yang memiliki tekstur kenyal dan sedikit lengket, mirip dengan ketan. Tiwul biasanya disajikan dengan tambahan santan dan gula merah sebagai pemanis. Rasanya yang lembut dan manis membuatnya menjadi camilan yang populer di berbagai daerah di Jawa Tengah dan Jawa Timur.',
      'ingredients': '1. Tepung sagu (500 gram) \n2. Air (1 liter) \n3. Garam (secukupnya) \n4. Gula merah (secukupnya) \n5. Santan (Sesuai selera)',
      'recipe':
          '1. Siapkan tepung sagu dalam jumlah yang diperlukan. \n2. Panaskan air dalam panci besar hingga mendidih. \n3. Tuangkan tepung sagu ke dalam mangkuk besar. \n4. Perlahan-lahan tambahkan air mendidih ke dalam tepung sagu sambil terus diaduk secara merata. Pastikan adonan tidak menggumpal. \n5. Uleni adonan hingga kalis dan tidak lengket di tangan. Tambahkan garam secukupnya sesuai selera. \n6. Bentuk adonan tiwul menjadi bulatan kecil atau sesuai dengan selera Anda. \n7. Rebus air dalam panci dan masukkan bulatan adonan tiwul ke dalam air mendidih. \n8. Biarkan adonan tiwul mendidih hingga matang, yang biasanya membutuhkan waktu sekitar 20-30 menit. \n9. Angkat tiwul dari air rebusan setelah matang dan tiriskan. \n10. Tiwul dapat disajikan panas-panas atau dingin sesuai selera. \n11. Jika diinginkan, hidangkan tiwul dengan gula merah yang diparut atau santan sebagai pelengkap untuk menambah cita rasa manis.',
      'imageURL':
          'https://mijil.id/uploads/default/original/2X/0/015ed6675cef485257714e6f2ae3a769a6e99e4b.jpeg',
    },
    {
      'name': 'Tahu Tek',
      'description':
          'Tahu Tek adalah makanan tradisional Jawa Timur yang terdiri dari potongan tahu goreng yang disajikan dengan irisan mentimun, taoge (kecambah), tahu rebus, kentang rebus, bawang goreng, dan kuah kental petis. Makanan ini memiliki cita rasa gurih, manis, pedas, dan sedikit asam, serta tekstur yang lembut dan kenyal. Tahu Tek biasanya disajikan dalam satu mangkuk besar atau piring datar. Kuah petis yang gurih dan kental menjadi ciri khas utama dari hidangan ini, memberikan rasa yang kaya dan lezat. Taburan bawang goreng di atasnya memberikan aroma yang harum dan tambahan rasa yang sedap. Hidangan Tahu Tek sering disajikan sebagai makanan jajanan atau kudapan di warung-warung pinggir jalan di Jawa Timur. Rasanya yang kaya dan teksturnya yang lembut membuatnya menjadi favorit di antara masyarakat Jawa Timur dan pengunjung yang penasaran ingin mencicipi kelezatannya.',
      'ingredients': '1. Tahu putih (400 gram) \n2. Mentimun (1 buah) \n3. Taoge (100 gram) \n4. Kentang (2 buah) \n5. Bawang goreng (Secukupnya) \n6. Petis (4 sendok) \n7. Gula merah (3 sendok) \n8. Bawang putih (4 siung) \n9. Air (500 ml) \n10. Garam (secukupnya)  \n11. Lengkuas (2 cm) \n12. Daun salam (2 lembar) \n13. Sereh (1 batang) \n14. Daun jeruk (2 lembar)',
      'recipe':
          '1. Panaskan sedikit minyak dalam panci, tumis bawang putih hingga harum. \n2. Tambahkan air, petis, gula merah, garam, lengkuas, daun salam, sereh, dan daun jeruk. Aduk rata. \n3. Masak kuah dengan api sedang hingga mendidih dan bumbu meresap. Biarkan kuah sedikit mengental. Koreksi rasanya sesuai selera. \n4. Panaskan minyak dalam wajan, goreng potongan tahu hingga kecokelatan dan matang sempurna. Angkat dan tiriskan. \n5. Susun potongan tahu goreng, irisan mentimun, taoge, dan kentang rebus dalam mangkuk saji. \n6. Tuangkan kuah petis yang sudah matang ke atas tahu dan pelengkapnya. \n7. Taburi dengan bawang goreng sebagai taburan di atasnya. \n8. Tahu Tek siap disajikan hangat sebagai hidangan lezat. Nikmati dengan nasi putih atau ketupat jika diinginkan.',
      'imageURL':
          'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/08/09/Rekomendasi-5-Warung-Tahu-Tek-Terenak-di-Sidoarjo-Tangkapan-layar-Instagramtahutek45-672009887.jpeg',
    },
    {
      'name': 'Kupang Lontong',
      'description':
          'Lontong Balap adalah salah satu makanan tradisional Jawa Timur yang terdiri dari lontong, tauge, tahu goreng, lentho (bakso dari kacang hijau), dan irisan mentimun. Makanan ini disajikan dengan kuah kacang yang gurih dan taburan bawang goreng. Kuah kacangnya dibuat dari bumbu rempah-rempah seperti bawang putih, kencur, dan kacang tanah yang dihaluskan dan direbus hingga mendapat tekstur yang kental dan meresap. Lontong Balap sering disajikan sebagai makanan jajanan atau kudapan di warung-warung pinggir jalan di Jawa Timur. Rasanya yang gurih, teksturnya yang lezat, dan aroma rempah-rempahnya membuatnya menjadi favorit di antara masyarakat Jawa Timur dan pengunjung yang penasaran ingin mencicipi kelezatannya.',
      'ingredients': '1. Kerang kupang (500 gram) \n2. Santan kelapa (500 gram) \n3. Air (500 ml) \n4. Bawang putih (3 siung) \n5. Bawang merah (4 siung) \n6. Cabai merah (3 buah) \n7. Lengkuas (2 cm) \n8. Daun jeruk (2 lembar) \n9. Gula merah (1 sdm) \n10. Garam (1 sdt)  \n11. Lontong (sesuai selera) \n12. Minyak goreng (secukupnya) \n13. Bawang goreng (secukupnya) \n14. Seledri (2 sesuai selera)',
      'recipe':
          '1. Bersihkan kerang kupang dengan air bersih dan peras sedikit-sedikit hingga bersih. \n2. Rebus kerang kupang dalam air mendidih selama 10-15 menit. Angkat dan tiriskan. \n3. Panaskan sedikit minyak dalam wajan, tumis bawang putih, bawang merah, cabai merah, lengkuas, dan daun jeruk hingga harum. \n4. Tuangkan santan kelapa dan air ke dalam tumisan. Aduk rata. \n5. Masukkan kerang kupang yang telah direbus ke dalam kuah. Tambahkan gula merah dan garam. Biarkan kuah mendidih dan bumbu meresap. \n6. Tata potongan lontong dalam mangkuk saji. \n7. Tuangkan kuah kupang dan santan di atas lontong. \n8. Taburi dengan bawang goreng dan daun seledri untuk tambahan aroma dan rasa. \n9. Kupang Lontong siap disajikan hangat sebagai hidangan utama atau lauk pendamping.',
      'imageURL':
          'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/indizone/2023/03/21/gmsOD4q/yuk-cicipi-lontong-kupang-mas-helmy-kuliner-khas-jawa-timur-yang-lezat-murah-lagi88.jpg',
    },
    {
      'name': 'Rujak Cingur',
      'description':
          'Rujak Cingur adalah hidangan khas Surabaya yang menggabungkan potongan daging cingur (hidung sapi yang direbus), sayuran segar seperti kol, timun, tauge, dan kacang panjang, serta bumbu kacang yang khas. Kuah kacangnya terbuat dari kacang tanah yang dihaluskan, bawang putih, cabai, gula merah, garam, air jeruk nipis, dan air. Hidangan ini memiliki cita rasa yang kaya, dengan perpaduan rasa gurih, pedas, asam, dan manis. Rujak Cingur biasanya disajikan dalam satu mangkuk besar atau piring datar, dengan potongan daging cingur dan sayuran yang disiram dengan kuah kacang. Taburan bawang goreng, kerupuk, dan petis sering ditambahkan untuk meningkatkan cita rasa.',
      'ingredients': '1. Daging cingur (300 gram) \n2. Kol (1/4 bagian) \n3. Timun (1 buah) \n4. Tauge (100 gram) \n5. Kacang panjang (100 gram) \n6. Tahu (200 gram) \n7. Tempe (200 gram) \n8. Telur rebus (4 butir) \n9. Kacang tanah (150 gram) \n10. Bawang putih (3 siung)  \n11. Cabai merah (3 buah) \n12. Gula merah (2 sendok) \n13. Garam (secukupnya) \n14. Jeruk nipis (1 buah) \n15. Air (300 ml)',
      'recipe':
          '1. Rebus daging cingur hingga empuk, kemudian tiriskan dan potong-potong sesuai selera. \n2. Iris tipis kol, timun, dan potong kacang panjang. \n3. Rebus tauge sebentar, kemudian tiriskan. \n4. Potong tahu, tempe, dan telur rebus menjadi potongan-potongan kecil. \n5. Sangrai kacang tanah hingga matang, kemudian haluskan. \n6. Haluskan bawang putih dan cabai merah. \n7. Campurkan kacang tanah yang telah dihaluskan, bawang putih, cabai merah, gula merah, garam, air jeruk nipis, dan air. Aduk rata hingga bumbu tercampur merata. \n8. Tata potongan daging cingur, sayuran, tahu, tempe, dan telur rebus di atas piring saji. \n9. Siram dengan kuah bumbu kacang yang sudah disiapkan. \n10. Taburi dengan bawang goreng sebagai hiasan. \n11. Rujak Cingur siap disajikan sebagai hidangan utama atau lauk pendamping. Selamat menikmati!',
      'imageURL':
          'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/kulinear/2021/01/133491011_559851828304629_3930425619815372214_n.jpg',
    },
    {
      'name': 'Sate Madura',
      'description':
          'Sate Madura adalah hidangan terdiri dari potongan daging sapi atau ayam yang ditusuk menggunakan tusuk sate, kemudian dipanggang hingga matang di atas bara arang. Daging tersebut sebelumnya direndam dalam campuran bumbu rempah-rempah khas Madura untuk memberikan cita rasa yang khas. Setelah matang, sate Madura disajikan dengan bumbu kacang sebagai sausnya, lontong atau nasi putih, serta irisan bawang merah dan timun sebagai garnish. Rasanya yang gurih, pedas, dan manis membuat sate Madura menjadi hidangan yang populer dan banyak disukai.',
      'ingredients': '1. Daging sapi atau ayam (500 gram) \n2. Bawang putih (6 siung) \n3. Bawang merah (6 siung) \n4. Ketumbar bubuk (1 sdt) \n5. Kemiri (2 butir) \n6. Garam (1 sdt) \n7. Merica bubuk (1/2 sdt) \n8. Air asam jawa (2 sendok) \n9. Kacang tanah (150 gram) \n10. Kecap manis (2 sendok makan)  \n11. Garam (1/2 sdt) \n12. Air (200 ml) \n13. Tusuk sate (secukupnya) \n14. Lontong atau nasi putih (secukupnya) \n15. Bawang merah dan timun (iris tipis)',
      'recipe':
          '1. Potong daging sapi atau ayam menjadi dadu kecil. \n2. Siapkan mangkuk, lalu campurkan bawang putih, bawang merah, ketumbar bubuk, kemiri, garam, merica bubuk, dan cuka atau air asam jawa. \n3. Rendam potongan daging dalam campuran bumbu marinasi tersebut selama minimal 1 jam atau semalam di lemari es untuk hasil yang lebih baik. \n4. Sangrai kacang tanah hingga matang, lalu haluskan. \n5. Tumis bawang putih hingga harum. \n6. Masukkan kacang tanah yang telah dihaluskan, kecap manis, gula merah, garam, dan air. Aduk hingga rata dan mendidih. Angkat dan sisihkan. \n7. Tusuk potongan daging yang telah direndam dalam bumbu marinasi ke tusuk sate. \n8. Panaskan grill atau panggangan. \n9. Panggang sate di atas bara arang sambil sesekali diolesi dengan sisa bumbu marinasi hingga matang dan berwarna kecokelatan. \n10. Sajikan sate Madura yang sudah matang dengan saus kacang. \n11. Hidangkan dengan lontong atau nasi putih, serta irisan bawang merah dan timun sebagai garnish.',
      'imageURL':
          'https://i0.wp.com/resepkoki.id/wp-content/uploads/2017/02/Resep-Sate-Ayam-Madura.jpg?fit=1920%2C1804&ssl=1',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Makanan Tradisional Jawa Timur'),
      ),
      body: ListView.builder(
        itemCount: foodData.length,
        itemBuilder: (context, index) {
          String name = foodData[index]['name']!;
          String imageURL = foodData[index]['imageURL']!;
          return FoodItem(
            name: name,
            imageURL: imageURL,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodDetail(foodData[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class FoodItem extends StatelessWidget {
  final String name;
  final String imageURL;
  final VoidCallback onTap;

  const FoodItem({
    required this.name,
    required this.imageURL,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.all(8),
        child: ListTile(
          leading: Image.network(
            imageURL,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          title: Text(name),
        ),
      ),
    );
  }
}

class FoodDetail extends StatelessWidget {
  final Map<String, String> food;

  const FoodDetail(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food['name']!),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: 300,
                  height: 300,
                  child: Image.network(
                    food['imageURL']!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Deskripsi:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(food['description']!),
              SizedBox(height: 20),
              Text(
                'Bahan-bahan:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(food['ingredients']!),
              SizedBox(height: 20),
              Text(
                'Resep/Cara Membuat:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(food['recipe']!),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
