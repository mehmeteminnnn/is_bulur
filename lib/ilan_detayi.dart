import 'package:flutter/material.dart';

void main() {
  runApp(IlanDetayPage());
}

class IlanDetayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text('İlan Detayı'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'Acil PVC Doğrama için Eleman',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 16),
                        Container(
                          width: 200,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child:
                              Icon(Icons.image, size: 100, color: Colors.grey),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'GÜRSEL İNŞAAT',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          'İstanbul, Küçükçekmece, Halkalı Mah.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(height: 16),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: DefaultTabController(
                            length: 2,
                            child: Column(
                              children: [
                                TabBar(
                                  indicator: BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 8,
                                        offset: Offset(0,
                                            4), // Gölgeyi daha belirgin yapar
                                      ),
                                    ],
                                  ),
                                  indicatorPadding: EdgeInsets.symmetric(
                                      horizontal: 16.0, vertical: 8.0),
                                  indicatorSize: TabBarIndicatorSize
                                      .tab, // Göstergenin tab boyutunda olmasını sağlar
                                  labelColor: Colors.white,
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        16, // Metni biraz daha büyük yapar
                                  ),
                                  unselectedLabelColor: Colors.black54,
                                  unselectedLabelStyle: TextStyle(
                                    fontSize:
                                        14, // Seçilmemiş tab'lar için daha küçük bir yazı boyutu
                                    fontWeight: FontWeight.w500,
                                  ),
                                  tabs: [
                                    Tab(text: 'İlan Detayı'),
                                    Tab(text: 'Konumu'),
                                  ],
                                ),
                                Container(
                                  height:
                                      150, // İlan Detayı veya Konum için alan
                                  child: TabBarView(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Bu ilan, acil olarak PVC doğrama yapabilecek bir eleman arayışını içermektedir. '
                                          'İlanla ilgili detaylar burada yer alır. Çalışma şartları, maaş ve diğer tüm bilgiler burada listelenir.',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Icon(
                                          Icons.location_on,
                                          size: 60,
                                          color: Colors.redAccent,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'İlan Tarihi: 10.08.2024',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.phone, color: Colors.white),
                    label: Text('Ara'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.message, color: Colors.white),
                    label: Text('Mesaj At'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.send, color: Colors.white),
                    label: Text('Başvur'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
