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
      home: SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isKampanyaEnabled = true;
  bool isMailEnabled = true;
  bool isAramaEnabled = true;
  bool isIndirimEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'İlanlarım',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Başvuranlar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Mesajlar',
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
      body: Container(
        color: Colors.green.shade400,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top Bar
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu, color: Colors.white),
                    Text(
                      'Ayarlar',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 24), // Placeholder for symmetry
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Profile Section
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.green.shade100,
                      child: Icon(Icons.person, size: 50, color: Colors.green),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Hasan Güneş',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '(###) ### - ## ##',
                      style:
                          TextStyle(fontSize: 14, color: Colors.grey.shade500),
                    ),
                    SizedBox(height: 20),
                    // Settings List
                    _buildSettingsOption('Profilim', Icons.person),
                    _buildSettingsOption(
                        'Hizmetlerim', Icons.miscellaneous_services),
                    _buildSettingsOption('Hesap Ayarlarım', Icons.settings),
                    _buildSettingsOption('İletişim', Icons.contact_mail),
                    _buildSettingsOption('Hesabımı Sil', Icons.delete),
                    _buildSettingsOption('Çıkış Yap', Icons.logout),
                    SizedBox(height: 20),
                    // Toggle Options
                    _buildToggleOption('Kampanya', isKampanyaEnabled,
                        (bool value) {
                      setState(() {
                        isKampanyaEnabled = value;
                      });
                    }),
                    _buildToggleOption('Mail', isMailEnabled, (bool value) {
                      setState(() {
                        isMailEnabled = value;
                      });
                    }),
                    _buildToggleOption('Arama', isAramaEnabled, (bool value) {
                      setState(() {
                        isAramaEnabled = value;
                      });
                    }),
                    _buildToggleOption('İndirim', isIndirimEnabled,
                        (bool value) {
                      setState(() {
                        isIndirimEnabled = value;
                      });
                    }),
                    SizedBox(height: 20),
                    // WhatsApp Section
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(FontAwesomeIcons.whatsapp, color: Colors.green),
                          SizedBox(width: 10),
                          Text(
                            '(###) ### - ## ##',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade700,
                            ),
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
      activeColor: Colors.green.shade700,
    );
  }
}
