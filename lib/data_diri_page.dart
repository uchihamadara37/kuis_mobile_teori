import 'package:flutter/material.dart';

class DataDiriPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Diri")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/profile.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Nama',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 83, 83, 83),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Text(
                      ": Andrea Alfian Sah Putra",
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
                    width: 20,
                  ),
                  SizedBox(
                    width: 100,
                    child: Text(
                      'NIM',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 83, 83, 83),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: Text(
                      ": 123220078",
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
                    width: 20,
                  ),
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Kelas',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 83, 83, 83),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: Text(
                      ": TPM IF-E",
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
                    width: 20,
                  ),
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Hobby',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 83, 83, 83),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: Text(
                      ": Baca komik",
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
    );
  }
}
