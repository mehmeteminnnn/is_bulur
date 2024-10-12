import 'package:flutter/material.dart';
import 'package:isci/isci_sifre_degistirme.dart';

class AccountSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hesap Ayarları'),
        backgroundColor: Colors.green.shade400,
      ),
      body: Stack(
        children: [
          // Arka plan için gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.green.shade200, Colors.white],
              ),
            ),
          ),
          // İçerik
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Hesap bilgileri kartı
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    leading:
                        Icon(Icons.lock_outline, color: Colors.green, size: 30),
                    title: Text(
                      'Şifre Değiştir',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    trailing: Icon(Icons.chevron_right, color: Colors.grey),
                    onTap: () {
                      // Şifre Değiştir sayfasına git
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChangePasswordPage()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar'ı buradan kaldırıyoruz
    );
  }
}
