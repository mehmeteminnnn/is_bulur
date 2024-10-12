import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RoleSelectionPage(),
    );
  }
}

class RoleSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Tüm içerikleri ortala
              children: [
                // İşveren Olarak Devam Et Kartı
                GestureDetector(
                  onTap: () {
                    // İşveren olarak devam et'e basıldığında yapılacaklar
                  },
                  child: SizedBox(
                    width: 300, // Sabit genişlik
                    height: 225, // Sabit yükseklik
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://img.icons8.com/color/96/000000/businessman.png',
                            height: 60,
                            width: 60, // İkonun boyutunu küçülttüm
                          ),
                          SizedBox(height: 10),
                          Text(
                            'İşveren olarak\n devam et',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18, // Font boyutunu biraz küçülttüm
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // İşçi Olarak Devam Et Kartı
                GestureDetector(
                  onTap: () {
                    // İşçi olarak devam et'e basıldığında yapılacaklar
                  },
                  child: SizedBox(
                    width: 300, // Sabit genişlik
                    height: 200, // Sabit yükseklik
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://img.icons8.com/color/96/000000/worker-male.png', // Yeni işçi ikonu
                            height: 60,
                            width: 60, // İkonun boyutunu küçülttüm
                          ),
                          SizedBox(height: 10),
                          Text(
                            'İşçi olarak\n devam et',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18, // Font boyutunu biraz küçülttüm
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
