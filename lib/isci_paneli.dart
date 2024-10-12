import 'package:flutter/material.dart';
import 'package:isci/giris_ekrani.dart';
import 'package:isci/giris_yap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStartedPage(),
    );
  }
}

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green, // Arka planı tamamen yeşil yapıyoruz
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // Elemanları genişletir
          children: [
            // Resmi en üste ekliyoruz, boşluk olmadan
            Image.asset(
              'assets/characters.png',
              fit: BoxFit.cover, // Resmi genişletir ve kesmeden sığdırır
              height: MediaQuery.of(context).size.height *
                  0.35, // Yüksekliği ayarlar
            ),
            SizedBox(height: 20), // Görseller arasında küçük bir boşluk
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Hadi Başlayalım',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, // Beyaz metin rengi
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      }
                      // Giriş Yap butonuna tıklanınca yapılacak işlemler
                    },
                    child: Text('Giriş Yap'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Beyaz buton
                      foregroundColor: Colors.green, // Yeşil metin rengi
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30), // Yuvarlak köşeler
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 10), // Butonlar arasında boşluk
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    // Kayıt Ol butonuna tıklanınca yapılacak işlemler

                    child: Text('Hesabınız yok mu? Kayıt ol'),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, // Beyaz metin
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Üye Olmadan Devam Et butonuna tıklanınca yapılacak işlemler
                    },
                    child: Text('Üye Olmadan Devam Et'),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, // Beyaz metin
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
