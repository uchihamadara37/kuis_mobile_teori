import 'package:flutter/material.dart';
import 'package:kuis_mobile_teori/data_diri_page.dart';
import 'package:kuis_mobile_teori/hari_page.dart';
import 'package:kuis_mobile_teori/limas_page.dart';
import 'package:kuis_mobile_teori/jajargenjang_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    JajargenjangPage(),
    LimasPage(),
    HariPage(),
    DataDiriPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.api_sharp), label: "Jajargenjang"),
          BottomNavigationBarItem(icon: Icon(Icons.api_sharp), label: "Limas"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: "Hari"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Data Diri"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey, // Warna ikon & label saat tidak aktif
        selectedLabelStyle: TextStyle(
          // fontWeight: FontWeight.bold,
          fontSize: 12,
        ), // Gaya label aktif
        unselectedLabelStyle: TextStyle(fontSize: 12), // Gaya label tidak aktif
        showUnselectedLabels: true, // Menampilkan label meskipun tidak dipilih
      ),
    );
  }
}

// Halaman Trapesium


// Halaman Kubus


// Halaman Penghitung Hari


// Halaman Data Diri

