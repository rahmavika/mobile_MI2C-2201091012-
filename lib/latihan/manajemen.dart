import 'package:flutter/material.dart';

class ManajemenInformatika extends StatelessWidget {
  const ManajemenInformatika({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'Manajemen Informatika',
            style: TextStyle(color: Colors.white),),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Deskripsi dan Profil',
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0), // Menambah padding horizontal
                child: Padding(
                  padding: const EdgeInsets.all(8.0), // Menambah margin
                  child:Text('Program Studi Manajemen Informatika (Kampus Kab. Pelalawan) merupakan salah satu Program '
                      'Studi Diluar Kampus Utama (PSDKU) Politeknik Negeri Padang yang memiliki sejarah dan '
                      'keterkaitan erat dengan berdirinya Akademi Komunitas di Daerah Pelalawan. Berangkat dari '
                      'SK Pendirian Akademi Komunitas Nomor : 179/P/2013 Tanggal 26 September 2013, Program Studi '
                      'Diluar Domisili (PDD) Kabupaten Pelalawan di awal berdirinya memiliki Program Studi '
                      'D2 Elektro Industri dan D2 Manajemen Informatika.',
                    style: TextStyle(fontSize: 15
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'),
                color: Colors.orange,
                textColor: Colors.white,
              )
            ],
          ),
        ));
  }
}


