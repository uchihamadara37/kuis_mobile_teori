import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HariPage extends StatelessWidget {
  final List<String> hari = [
    "Senin",
    "Selasa",
    "Rabu", // 3
    "Kamis",
    "Jumat",
    "Sabtu",
    "Minggu"
  ];
  final TextEditingController controller = TextEditingController();
  String hasil = "";

  HariPage({super.key});

  void hitungHari(BuildContext context) {
    int today = DateTime.now().weekday;
    print(today);

    int index = int.tryParse(controller.text) ?? 0;
    int hasil = (index + today - 1) % 7;
    String namaHari = hari[hasil];
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
          title: Text("Hari"),
          content:
              Text("Hari ke($index) dari sekarang adalah hari $namaHari")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Penghitung Hari")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Angka di sini adalah jumlah hari yang ingin anda ketahui nama harinya apa.",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 124, 124, 124),
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: controller,
              decoration: InputDecoration(
                  labelText: "Masukkan berapa hari : ",
                  hintStyle: TextStyle(fontSize: 16)),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => hitungHari(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text('Tampilkan Hari',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
