import 'dart:math';

import 'package:flutter/material.dart';

class LimasPage extends StatefulWidget {
  const LimasPage({super.key});

  @override
  State<LimasPage> createState() => _LimasPageState();
}

class _LimasPageState extends State<LimasPage> {
  final TextEditingController a = TextEditingController();
  final TextEditingController h = TextEditingController();
  final TextEditingController m = TextEditingController();
  double luas = 0, keliling = 0, volume = 0;

  void hitung() {
    double alas = double.tryParse(a.text) ?? 0;
    double tinggi = double.tryParse(h.text) ?? 0;
    double miring = double.tryParse(m.text) ?? 0;
    setState(() {
      // menghitung luas
      double semiPerimeter = (alas + 2*miring) / 2;
      double luasSegitiga = sqrt(semiPerimeter * (semiPerimeter - alas) *  (semiPerimeter - miring) *  (semiPerimeter - miring) );
      luas = (alas*alas) + (luasSegitiga*4);

      volume = (alas*alas) * tinggi / 3;

      keliling = (4 * alas) + (4 * miring);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hitung Bangun 3D Limas")),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 20,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Limas Persegi",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 124, 124, 124),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/limas.png",
                  width: 150,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    controller: a,
                    keyboardType:
                        TextInputType.number, // Hanya menerima angka
                    decoration: InputDecoration(
                      labelText:
                          "Masukan panjang sisi alas", // Label yang akan naik saat diketik
                      labelStyle:
                          TextStyle(color: Colors.blue), // Warna label
                      filled: true,
                      fillColor: Colors.white, // Warna background
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(15), // Corner melengkung
                        borderSide:
                            BorderSide.none, // Hilangkan border default
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2), // Border saat fokus
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.grey.shade300,
                            width: 1), // Border default
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 14, horizontal: 16), // Padding dalam
                    ),
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    controller: h,
                    keyboardType:
                        TextInputType.number, // Hanya menerima angka
                    decoration: InputDecoration(
                      labelText:
                          "Masukan tinggi", // Label yang akan naik saat diketik
                      labelStyle:
                          TextStyle(color: Colors.blue), // Warna label
                      filled: true,
                      fillColor: Colors.white, // Warna background
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(15), // Corner melengkung
                        borderSide:
                            BorderSide.none, // Hilangkan border default
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2), // Border saat fokus
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.grey.shade300,
                            width: 1), // Border default
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 14, horizontal: 16), // Padding dalam
                    ),
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    controller: m,
                    keyboardType: TextInputType.number, // Hanya menerima angka
                    decoration: InputDecoration(
                      labelText:
                          "Masukan rusuk miring", // Label yang akan naik saat diketik
                      labelStyle: TextStyle(color: Colors.blue), // Warna label
                      filled: true,
                      fillColor: Colors.white, // Warna background
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(15), // Corner melengkung
                        borderSide: BorderSide.none, // Hilangkan border default
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.blue, width: 2), // Border saat fokus
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.grey.shade300,
                            width: 1), // Border default
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 14, horizontal: 16), // Padding dalam
                    ),
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: hitung,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: Text('Hitung Sekarang',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Luas',
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 83, 83, 83),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          luas != 0 ? ": $luas" : ": belum dihitung",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 124, 124, 124),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Volume',
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 83, 83, 83),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          volume != 0 ? ": $volume" : ": belum dihitung",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 124, 124, 124),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Keliling (rusuk total)',
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 83, 83, 83),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          keliling != 0 ? ": $keliling" : ": belum dihitung",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 124, 124, 124),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
