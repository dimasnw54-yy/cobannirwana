import 'package:flutter/material.dart';

void main() {
  runApp(Coba());
}

class Coba extends StatelessWidget {
  Coba({super.key});

  Widget animasi({
    required Widget child,
  }) {
    return TweenAnimationBuilder<double>(
      duration: Duration(milliseconds: 700),
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - value)),
            child: child,
          ),
        );
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffD9F1FF),
        appBar: AppBar(
          title: Text('Coban Nirwana'),
          backgroundColor: Color(0xffD9F1FF),
          foregroundColor: Color(0xff347BA5),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // FOTO
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/cobannirwana.jpeg',
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),

              // JUDUL
              animasi(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Sejarah Singkat Coban Nirwana',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff347BA5),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              // SEJARAH
              animasi(
                child: Container(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 20),
                  child: Text(
                    'Coban Nirwana merupakan salah satu wisata alam berupa air terjun yang terletak di Desa Gedangan, Kecamatan Gedangan, Kabupaten Malang, Jawa Timur. Tempat wisata ini dikenal karena memiliki pemandangan alam yang indah dan suasana yang masih asri.\n'
                    'Coban Nirwana memiliki keunikan berupa aliran air yang melewati bebatuan besar dengan bentuk bertingkat. Susunan batuan tersebut menciptakan pemandangan air terjun yang berbeda dari tempat wisata lainnya.\n'
                    'Air yang mengalir di antara bebatuan membentuk kolam alami dengan air yang terlihat jernih. Suasana di sekitar air terjun juga terasa sejuk karena dikelilingi pepohonan dan lingkungan alam yang masih hijau.\n'
                    'Coban Nirwana menjadi salah satu destinasi wisata yang menarik bagi pengunjung yang ingin menikmati keindahan alam, berfoto, maupun bersantai bersama keluarga dan teman.\n'
                    'Keindahan alam Coban Nirwana menjadikannya salah satu tempat wisata yang memiliki daya tarik tersendiri di Kabupaten Malang. Oleh karena itu, pengunjung diharapkan tetap menjaga kebersihan dan kelestarian lingkungan sekitar.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Color(0xff347BA5),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),

              // LOKASI DAN KONTAK
              animasi(
                child: Container(
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xffEAF7FF),
                    border: Border.all(
                      color: Color(0xff6CB5DF),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // LOKASI
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lokasi',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff347BA5),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 22,
                                  color: Color(0xff347BA5),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Coban Nirwana\n'
                                    'Desa Gedangan,\n'
                                    'Kecamatan Gedangan,\n'
                                    'Kabupaten Malang,\n'
                                    'Jawa Timur',
                                    style: TextStyle(
                                      fontSize: 14,
                                      height: 1.5,
                                      color: Color(0xff347BA5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // GARIS PEMISAH
                      Container(
                        height: 150,
                        width: 1,
                        color: Color(0xff6CB5DF),
                        margin: EdgeInsets.symmetric(horizontal: 16),
                      ),

                      // CONTACT
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact Saya',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff347BA5),
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 20,
                                  color: Color(0xff347BA5),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    '05985935',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff347BA5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Container(
                              height: 1,
                              color: Color(0xff6CB5DF),
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 20,
                                  color: Color(0xff347BA5),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    '@gmail.com',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff347BA5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
