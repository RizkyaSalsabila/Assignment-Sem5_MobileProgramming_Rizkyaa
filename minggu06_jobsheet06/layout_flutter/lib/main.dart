import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override

  // == PRAKTIKUM 1 ==
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(
          Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // == PRAKTIKUM 3 ==
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Air Terjun Coban Rondo terletak di Desa Pandansari, Kecamatan Pujon, Kabupaten Malang, Jawa Timur. '
        'Dengan ketinggian sekitar 84 meter, air terjun ini menawarkan pemandangan alam yang memukau dan udara yang sejuk. '
        'Lokasinya yang berada di lereng Gunung Kawi membuatnya menjadi salah satu destinasi wisata alam yang populer di Malang. '
        'Pengunjung dapat menikmati keindahan alam sekitar, berfoto di spot-spot menarik, dan merasakan sensasi kesegaran air terjun yang menyegarkan.\n\n'
        'Dibuat oleh: Rizkya Salsabila (2341720056)\n',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Rizkya Salsabila_2341720056',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            // == PRAKTIKUM 4 ==
            Image.asset(
              'assets/images/air_terjun_coban_rondo.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  // == PRAKTIKUM 2 ==
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}