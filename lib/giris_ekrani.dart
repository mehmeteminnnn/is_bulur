import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isKvkkChecked = false;
  bool isUserAgreementChecked = false;
  bool isCampaignChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(
              'Kayıt Ol',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    // İsim TextField
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'İsim',
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    // Soyisim TextField
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Soyisim',
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    // E-Posta Adresi TextField
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'E-Posta Adresi',
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    // Telefon Numarası TextField
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: '+90 (###) ### - ## ##',
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    // Checkbox'lar
                    Row(
                      children: [
                        Checkbox(
                          value: isKvkkChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isKvkkChecked = value ?? false;
                            });
                          },
                        ),
                        Text('KVKK'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: isUserAgreementChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isUserAgreementChecked = value ?? false;
                            });
                          },
                        ),
                        Expanded(child: Text('Kullanıcı Sözleşmesi')),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: isCampaignChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isCampaignChecked = value ?? false;
                            });
                          },
                        ),
                        Expanded(
                          child: Text(
                            'İşBul\'un bana özel kampanya, tanıtım ve fırsatlardan haberdar olmak istiyorum.',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // İleri butonuna basılınca yapılacaklar
              },
              child: Text('İleri'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Giriş Yap butonuna basılınca yapılacaklar
              },
              child: Text('Üyelik Hesabım Var!'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            TextButton(
              onPressed: () {
                // Giriş Yap butonuna basılınca yapılacaklar
              },
              child: Text('Giriş Yap'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                side: BorderSide(color: Colors.white),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 20),
            // WhatsApp Butonu
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Icon(Icons.whatshot_sharp, color: Colors.white, size: 30),
                  SizedBox(width: 10),
                  Text(
                    '(###) ### - ## ##',
                    style: TextStyle(color: Colors.white, fontSize: 18),
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
