import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:isci/alani_gor.dart';
import 'package:isci/ilanlar.dart';
import 'package:isci/isci_profil.dart';

class WorkerNavBar extends StatefulWidget {
  @override
  _WorkerNavBarState createState() => _WorkerNavBarState();
}

class _WorkerNavBarState extends State<WorkerNavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    IlanlarPage(), // İlanlar sayfası
    AlanGorPage(),
    Center(child: Text('Taleplerim')),
    SettingsPage(), // Ayarlar sayfası
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Current page displayed
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent, // Transparan arka plan
        color: Colors.white,
        buttonBackgroundColor: Colors.greenAccent,
        height: 65,
        animationDuration: Duration(milliseconds: 500),
        animationCurve: Curves.easeInOut,
        items: <CurvedNavigationBarItem>[
          CurvedNavigationBarItem(
            child: Icon(Icons.list,
                size: 35,
                color: _currentIndex == 0 ? Colors.white : Colors.grey[300]),
            label: 'İlanlar',
            labelStyle: TextStyle(
              fontSize: 14,
              color: _currentIndex == 0 ? Colors.green : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.map,
                size: 35,
                color: _currentIndex == 1 ? Colors.white : Colors.grey[300]),
            label: 'Alanı Gör',
            labelStyle: TextStyle(
              fontSize: 14,
              color: _currentIndex == 1 ? Colors.green : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.assignment,
                size: 35,
                color: _currentIndex == 2 ? Colors.white : Colors.grey[300]),
            label: 'Taleplerim',
            labelStyle: TextStyle(
              fontSize: 14,
              color: _currentIndex == 2 ? Colors.green : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.settings,
                size: 35,
                color: _currentIndex == 3 ? Colors.white : Colors.grey[300]),
            label: 'Ayarlar',
            labelStyle: TextStyle(
              fontSize: 14,
              color: _currentIndex == 3 ? Colors.green : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Mevcut indeksi güncelle
          });
        },
      ),
    );
  }
}
