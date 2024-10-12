import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Firebase Auth paketi
import 'package:isci/firebase_options.dart';
import 'package:isci/giris_ekrani.dart';
import 'giris_yap.dart'; // Giriş Yap Sayfası

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  User? _user; // Firebase'den dönecek kullanıcı

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  // Firebase oturum kontrolü
  void _checkLoginStatus() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    setState(() {
      _user = auth.currentUser; // Firebase kullanıcısını al
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _user != null
          ? LoginPage()
          : WelcomePage(), // Kullanıcı varsa ana sayfaya yönlendir
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.greenAccent, Colors.green],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hoşgeldiniz',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Yeni iş fırsatları bir tık uzağınızda. İş Bulur ile size en yakın iş fırsatlarını keşfedin, hızlıca başvurun, kazanmaya başlayın! Hem işverenler hem de iş arayanlar için en güvenilir platformdasınız. Şimdi çevrenizdeki işleri inceleyin ve kariyerinize yön verin!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          RegisterPage()), // Kullanıcıyı giriş sayfasına yönlendir
                );
              },
              child: Text('Atla'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
