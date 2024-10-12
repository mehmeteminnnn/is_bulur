import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ServicesPage(),
    );
  }
}

class ServicesPage extends StatelessWidget {
  final List<Service> services = [
    Service(icon: Icons.build, name: 'Tesisat'),
    Service(icon: Icons.construction, name: 'İnşaat'),
    Service(icon: Icons.window, name: 'Cam - PVC'),
    Service(icon: Icons.local_shipping, name: 'Nakliye'),
    Service(icon: Icons.store, name: 'Depo'),
    Service(icon: Icons.electrical_services, name: 'Elektrik'),
    Service(icon: Icons.format_paint, name: 'Boya'),
    Service(icon: Icons.chair, name: 'Mobilya'),
    Service(icon: Icons.pool, name: 'Havuz Bakım'),
    Service(icon: Icons.person_outline, name: 'Kadın Usta'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hizmetler'),
        backgroundColor: Colors.green.shade400,
      ),
      body: Stack(
        children: [
          // Arka plan için gradient ekledik
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.green.shade200, Colors.white],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Bilgilendirme metni
                Text(
                  'Profilin üzerinden istediğin hizmeti ekleyebilir, düzenleyebilir veya silebilirsin.',
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
                SizedBox(height: 10),
                // Hizmet Ekle Butonu
                ElevatedButton.icon(
                  onPressed: () {
                    // Hizmet Ekle butonuna tıklama işlevi
                  },
                  icon: Icon(Icons.add, color: Colors.white),
                  label: Text(
                    'Hizmet Ekle',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Hizmet Listesi
                Expanded(
                  child: ListView.builder(
                    itemCount: services.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: Icon(
                            services[index].icon,
                            color: Colors.green.shade400,
                            size: 30,
                          ),
                          title: Text(
                            services[index].name,
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing:
                              Icon(Icons.chevron_right, color: Colors.grey),
                          onTap: () {
                            // Hizmet detayı sayfasına git
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green.shade600,
        unselectedItemColor: Colors.grey,
        currentIndex: 3, // Ayarlar sekmesi seçili
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            label: 'İlanlar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Alanı Gör',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Taleplerim',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Ayarlar',
          ),
        ],
      ),
    );
  }
}

// Hizmet sınıfı
class Service {
  final IconData icon;
  final String name;

  Service({required this.icon, required this.name});
}
