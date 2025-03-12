import 'package:flutter/material.dart';

class JajargenjangPage extends StatefulWidget {
  const JajargenjangPage({super.key});

  @override
  State<JajargenjangPage> createState() => _JajargenjangPageState();
}

/*
Ini adalah class jajargenjang ...
*/
class _JajargenjangPageState extends State<JajargenjangPage> {
  final TextEditingController a = TextEditingController();
  final TextEditingController h = TextEditingController();
  final TextEditingController m = TextEditingController();
  double luas = 0, keliling = 0;

  void hitung() {
    double alas = double.tryParse(a.text) ?? 0;
    double tinggi = double.tryParse(h.text) ?? 0;
    double miring = double.tryParse(m.text) ?? 0;
    setState(() {
      luas = 0.5 * (alas * tinggi);
      keliling = (2 * alas) + (2 * miring);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hitung Jajar Genjang")),
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
                Image.asset(
                  "assets/jajargenjang.png",
                  width: 150,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 150,
                      child: TextField(
                        controller: a,
                        keyboardType:
// Hanya menerima angka
                            TextInputType.number, 
                        decoration: InputDecoration(
                          labelText:
                              "Masukan alas", 
                          labelStyle:
// Warna label
                              TextStyle(color: Colors.blue), 
                          filled: true,
// Warna background
                          fillColor: Colors.white, 
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(15), 
                            borderSide:
                                BorderSide.none, 
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2), 
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                color: Colors.grey.shade300,
                                width: 1), 
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 14, horizontal: 16), 
                        ),
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: TextField(
                        controller: h,
                        keyboardType:
                            TextInputType.number, 
                        decoration: InputDecoration(
                          labelText:
                              "Masukan tinggi", 
                          labelStyle:
                              TextStyle(color: Colors.blue), 
                          filled: true,
                          fillColor: Colors.white, 
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(15), 
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
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    controller: m,
                    keyboardType: TextInputType.number, // Hanya menerima angka
                    decoration: InputDecoration(
                      labelText:
                          "Masukan sisi miring", // Label yang akan naik saat diketik
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
                        width: 80,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Luas',
                          style: TextStyle(
                            fontSize: 18,
                            color: const Color.fromARGB(255, 83, 83, 83),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ": $luas",
                          style: TextStyle(
                            fontSize: 18,
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
                        width: 80,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Keliling',
                          style: TextStyle(
                            fontSize: 18,
                            color: const Color.fromARGB(255, 83, 83, 83),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ": $keliling",
                          style: TextStyle(
                            fontSize: 18,
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
