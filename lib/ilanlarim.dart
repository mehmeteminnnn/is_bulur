import 'package:flutter/material.dart';
import 'package:isci/ilan_ver.dart';

class MyListingsPage extends StatefulWidget {
  @override
  _MyListingsPageState createState() => _MyListingsPageState();
}

class _MyListingsPageState extends State<MyListingsPage> {
  final List<Listing> listings = [
    Listing(
      company: 'GÜRSEL İNŞAAT',
      title: 'Acil PVC Doğrama için Akşam...',
      date: '18.08.2024',
      location: 'İstanbul - Küçükçekmece',
      priceRange: '7.000 TL - 10.000 TL',
      description: 'İlan Detayı İlan Detayı İlan Detayı İlan Detayı...',
    ),
    Listing(
      company: 'KÜÇÜK İNŞAAT',
      title: 'Yazlık Kiralık Daire...',
      date: '20.08.2024',
      location: 'İzmir - Çeşme',
      priceRange: '3.000 TL - 5.000 TL',
      description: 'Deniz manzaralı, havuzlu...',
    ),
  ];

  List<Listing> filteredListings = [];
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    filteredListings = listings; // Başlangıçta tüm ilanları göster
  }

  void _filterListings(String query) {
    if (query.isEmpty) {
      filteredListings = listings; // Arama çubuğu boşsa tüm ilanları göster
    } else {
      filteredListings = listings.where((listing) {
        return listing.title.toLowerCase().contains(query.toLowerCase()) ||
            listing.company.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }
    setState(() {
      searchQuery = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İlanlarım'),
        backgroundColor: Colors.green.shade400,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Arama Çubuğu ve İlan Ver Butonu
            Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: _filterListings,
                    decoration: InputDecoration(
                      hintText: 'Arama',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => IlanVerPage()));
                  },
                  // İlan Ver Butonuna tıklama işlemi
                  // İlan verme sayfasına yönlendirme yapılabilir

                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  label: Text(
                    'İlan Ver',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // İlan Kartları Listesi
            Expanded(
              child: ListView.builder(
                itemCount: filteredListings.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.only(bottom: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Resim Placeholder
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.image,
                              size: 50,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          SizedBox(width: 10),
                          // İlan Bilgileri
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  filteredListings[index].company,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  filteredListings[index].title,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  filteredListings[index].date,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.red,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  filteredListings[index].description,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(Icons.location_on,
                                        size: 16, color: Colors.grey),
                                    SizedBox(width: 5),
                                    Expanded(
                                      child: Text(
                                        filteredListings[index].location,
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // Fiyat Aralığı
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              filteredListings[index].priceRange,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.blue.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// İlan Modeli
class Listing {
  final String company;
  final String title;
  final String date;
  final String location;
  final String priceRange;
  final String description;

  Listing({
    required this.company,
    required this.title,
    required this.date,
    required this.location,
    required this.priceRange,
    required this.description,
  });
}
