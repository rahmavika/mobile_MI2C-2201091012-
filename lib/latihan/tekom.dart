import 'package:flutter/material.dart';

class TeknikKomputer extends StatelessWidget {
  const TeknikKomputer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Teknik Komputer',
          style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),

      body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text('Deskripsi dan Profil',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0), // Menambah padding horizontal
                child: Padding(
                  padding: const EdgeInsets.all(8.0), // Menambah margin
                  child:Text('Program Studi di Luar Kampus Utama (PSDKU) adalah Program Studi yang diselenggarakan di '
                      'kabupaten/kota/kota administratif yang tidak berbatasan langsung dengan Kampus Utama. '
                      'Program Studi Teknik Komputer di Kabupaten Solok Selatan merupakan jenjang program studi '
                      'Diploma 3 (D3) dengan Level KKNI (Level 5) berdiri tanggal 14 April 2021 sesuai dengan '
                      'Surat Keputusan (SK) penyelenggaraan program studi nomor 062/D/OT/2021. Tujuan didirikannya '
                      'PSDKU adalah meningkatkan akses, pemerataan, mutu, relevansi pendidikan tinggi di seluruh '
                      'wilayah Indonesia dan untuk meningkatkan mutu, dan relevansi penelitian ilmiah serta pengabdian '
                      'kepada masyarakat untuk mendukung Pembangunan Nasional',
                    style: TextStyle(fontSize: 15
                    ),
                    textAlign: TextAlign.justify, // Menjadikan teks rata kanan kiri
                  ),
                ),
              ),

              SizedBox(height: 150,),
              MaterialButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Back'),
                color: Colors.orange,
                textColor: Colors.white,
              ),
            ],
          ),
      ),
    );
  }
}
