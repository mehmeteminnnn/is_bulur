import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class AlanGorPage extends StatefulWidget {
  @override
  _AlanGorPageState createState() => _AlanGorPageState();
}

class _AlanGorPageState extends State<AlanGorPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        title: Text('Alanı Gör'),
      ),
      body: Column(
        children: [
          // Arama çubuğu ve Filtre butonu
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Arama',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton.icon(
                  onPressed: () {
                    // Filtreleme işlemleri burada yapılabilir
                  },
                  icon: Icon(Icons.filter_list),
                  label: Text('Filtrele'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Harita kısmı
          Expanded(
            child: FlutterMap(
              children: [
                TileLayer(
                  urlTemplate:
                      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: ['a', 'b', 'c'],
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                        point: LatLng(39.92077, 32.85411),
                        child: Icon(Icons.location_on,
                            color: Colors.red, size: 40)),
                    // Ekstra markerlar ekleyebilirsin
                  ],
                )
              ],
              options: MapOptions(
                initialCenter:
                    LatLng(39.92077, 32.85411), // Ankara koordinatları
                initialZoom: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
