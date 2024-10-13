import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class IlanlarPage extends StatelessWidget {
  final String location = 'İstanbul - Küçükçekmece';
  final String date = '18.08.2024';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Merhaba Hasan Güneş'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          ilanCard(),
          ilanCard(),
          ilanCard(),
        ],
      ),
      //bottomNavigationBar: WorkerNavBar(),
      // bottomNavigationBar'ı buradan kaldırıyoruz
    );
  }

  Widget ilanCard() {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 64,
                  height: 64,
                  color: Colors.grey.shade200,
                  child: Icon(Icons.image, size: 40, color: Colors.grey),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "GÜRSEL İNŞAAT",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Acil PVC Doğrama için Akşam İş",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(Icons.location_on,
                              color: Colors.grey.shade600, size: 16),
                          SizedBox(width: 4),
                          Expanded(
                            child: AutoSizeText(
                              location,
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey.shade600),
                              maxLines: 1,
                              minFontSize: 8,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(width: 12),
                          AutoSizeText(
                            date,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '7.000 TL - 10.000 TL',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Icon(Icons.more_vert),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
