import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:web_framework/latihan/tekom.dart';

import 'manajemen.dart';

class Tugas extends StatelessWidget {
  const Tugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Latihan Satu'),
        centerTitle: true,
      ),
      body: Center(
        //biar bisa scroll kalau widgetnya panjang ke bawah
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/poli.png',
                fit: BoxFit.contain,
                height: 200,
                width: 200,
              ),
              SizedBox(height: 18,),
              Text('Selamat Datang di Politeknik Negeri Padang ',
                style: TextStyle(color: Colors.deepOrangeAccent,
                    fontSize: 25, fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10,),
              Text('Limau Manih, Padang, Sumbar',
              ),

              SizedBox(height: 40,),
              MaterialButton(onPressed: (){
                //tambahkan code toast
                // showToast(
                //     'Ini Manajemen Informatika',
                //     context: context,
                //     axis: Axis.horizontal,
                //     alignment: Alignment.center,
                //     position: StyledToastPosition.bottom,
                //     toastHorizontalMargin: 20,
                //     fullWidth: true
                // );
                showToast(
                    'Pindah ke Teknik Komputer',
                    context: context,
                    axis: Axis.horizontal,
                    alignment: Alignment.center,
                    position: StyledToastPosition.bottom,
                    toastHorizontalMargin: 20,
                    fullWidth: true
                );

                Navigator.push(context, MaterialPageRoute(builder: (context)
                => ManajemenInformatika())
                );
              },
                child: Text('Manajemen Informatika',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),
                ),
                color: Colors.orange,
                textColor: Colors.white,
              ),

              SizedBox(height: 20,),
              MaterialButton(onPressed: (){
                //tambahkan code toast
                // showToast(
                //   'Ini Teknik Komputer',
                //   context: context,
                //   animation: StyledToastAnimation.slideFromBottomFade,
                //   reverseAnimation: StyledToastAnimation.slideToTopFade,
                //   position: StyledToastPosition(
                //       align: Alignment.topCenter, offset: 0.0
                //   ),
                //   startOffset: Offset(0.0, -3.0),
                //   reverseEndOffset: Offset(0.0, -3.0),
                //   duration: Duration(seconds: 4),
                //   animDuration: Duration(seconds: 1),
                //   curve: Curves.fastLinearToSlowEaseIn,
                //   reverseCurve: Curves.fastOutSlowIn,
                // );

                showToast(
                    'Pindah ke Teknik Komputer',
                    context: context,
                    axis: Axis.horizontal,
                    alignment: Alignment.center,
                    position: StyledToastPosition.bottom,
                    toastHorizontalMargin: 20,
                    fullWidth: true
                );

                Navigator.push(context, MaterialPageRoute(builder: (context)
                => TeknikKomputer())
                );
              },
                child: Text('Teknik Komputer',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),
                ),
                color: Colors.orange,
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}