import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isci/alani_gor.dart';
import 'package:isci/ilanlarim.dart';
import 'package:isci/isci_profil.dart';
import 'package:isci/isveren_ayarlar.dart';

class BossNavBar extends StatefulWidget {
  @override
  _BossNavBarState createState() => _BossNavBarState();
}

class _BossNavBarState extends State<BossNavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    MyListingsPage(), // İlanlar sayfası
   Center(child: Text('Başvuranlar')),
    Center(child: Text('Mesajlar')),
    SettingsScreen(), // Ayarlar sayfası
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
            label: 'İlanlarım',
            labelStyle: TextStyle(
              fontSize: 14,
              color: _currentIndex == 0 ? Colors.green : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(FontAwesomeIcons.userTie,
                size: 35,
                color: _currentIndex == 1 ? Colors.white : Colors.grey[300]),
            label: 'Başvuranlar',
            labelStyle: TextStyle(
              fontSize: 14,
              color: _currentIndex == 1 ? Colors.green : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(FontAwesomeIcons.envelope,
                size: 35,
                color: _currentIndex == 2 ? Colors.white : Colors.grey[300]),
            label: 'Mesajlar',
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
