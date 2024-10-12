import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SettingsPage(),
    );
  }
}

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool kampanyaEnabled = true;
  bool mailEnabled = true;
  bool aramaEnabled = true;
  bool indirimEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        elevation: 0,
        title: Text(
          'Ayarlar',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.menu),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'İlanlar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Alanı Gör',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Taleplerim',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ayarlar',
          ),
        ],
        currentIndex: 3,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile section
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              color: Colors.green.shade400,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.green, size: 40),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hasan Güneş',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '(###) ### - ## ##',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Settings list
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  _buildSettingsOption('Profilim', Icons.person),
                  _buildSettingsOption(
                      'Hizmetlerim', Icons.miscellaneous_services),
                  _buildSettingsOption('Hesap Ayarlarım', Icons.settings),
                  _buildSettingsOption('İletişim', Icons.contact_mail),
                  _buildSettingsOption('Hesabımı Sil', Icons.delete),
                  _buildSettingsOption('Çıkış Yap', Icons.logout),
                  SizedBox(height: 16),
                  _buildToggleOption('Kampanya', kampanyaEnabled, (val) {
                    setState(() {
                      kampanyaEnabled = val;
                    });
                  }),
                  _buildToggleOption('Mail', mailEnabled, (val) {
                    setState(() {
                      mailEnabled = val;
                    });
                  }),
                  _buildToggleOption('Arama', aramaEnabled, (val) {
                    setState(() {
                      aramaEnabled = val;
                    });
                  }),
                  _buildToggleOption('İndirim', indirimEnabled, (val) {
                    setState(() {
                      indirimEnabled = val;
                    });
                  }),
                  SizedBox(height: 16),
                  // WhatsApp Section
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(FontAwesomeIcons.whatsapp, color: Colors.green),
                        SizedBox(width: 8),
                        Text(
                          '(###) ### - ## ##',
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ],
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

  // Function to build a settings option
  Widget _buildSettingsOption(String title, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey.shade700),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey.shade700,
        ),
      ),
      trailing:
          Icon(Icons.arrow_forward_ios, color: Colors.grey.shade700, size: 16),
      onTap: () {
        // Handle navigation or action
      },
    );
  }

  // Function to build a toggle option
  Widget _buildToggleOption(
      String title, bool value, ValueChanged<bool> onChanged) {
    return SwitchListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey.shade700,
        ),
      ),
      value: value,
      onChanged: onChanged,
      activeColor: Colors.green,
    );
  }
}
