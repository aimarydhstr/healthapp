import 'package:flutter/material.dart';

class MyDashboard extends StatefulWidget {
  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 228, 228),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  left: 10.0, top: 20.0, right: 10.0, bottom: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Hallo,',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Selamat Datang!',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Cari informasi di sini...',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.search),
                      iconColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide:
                            BorderSide(color: Colors.white), // Warna border
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                            color: Colors.white), // Warna border saat fokus
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                            color: Colors.white), // Warna border saat non-fokus
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              color: Colors.deepPurpleAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 5.0, top: 10.0, right: 5.0, bottom: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Index Masa Tubuh',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Ketahui status gizimu melalui perbandingan berat dan tinggi badan',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 197, 197, 197),
                        ),
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/calc');
                          },
                          child: Text(
                            'Cek Sekarang',
                            style: TextStyle(color: Colors.deepPurpleAccent),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              color: Colors.deepOrangeAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    12.0), // Mengatur sudut lengkungan kartu
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 5.0, top: 10.0, right: 5.0, bottom: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Energi Basal',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Ketahui kebutuhan energi yang dibutuhkan tubuhmu untuk menjalankan fungsi fisiologis tubuh',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 197, 197, 197)),
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  100.0), // Mengatur sudut lengkungan tombol
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Cek Sekarang',
                            style: TextStyle(color: Colors.deepOrangeAccent),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              color: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    12.0), // Mengatur sudut lengkungan kartu
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 5.0, top: 10.0, right: 5.0, bottom: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Energi Expenditure',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        'Ketahui status energi yang dibutuhkan tubuhmu untuk mempertahankan kehidupan',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 197, 197, 197)),
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  100.0), // Mengatur sudut lengkungan tombol
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Cek Sekarang',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
