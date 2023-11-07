import 'package:flutter/material.dart';

class MyCalc extends StatefulWidget {
  @override
  _MyCalcState createState() => _MyCalcState();
}

class _MyCalcState extends State<MyCalc> {
  String gender = "perempuan";
  double weight = 0;
  double height = 0;
  int age = 0;
  double bmr = 0;

  double karbohidrat = 0;
  double lemak = 0;
  double protein = 0;

  void calculateBMR() {
    if (gender == "perempuan") {
      bmr = 663.8 + (9.5 * weight) + (1.8 * height) - (4.5 * age);
    } else {
      bmr = 74.8 + (13.7 * weight) + (5 * height) - (6.8 * age);
    }

    karbohidrat = bmr * 0.6 / 4;
    lemak = bmr * 0.2 / 9.01;
    protein = bmr * 0.2 / 4.005;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator BMR'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.deepPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Kalkulator BMR',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Jenis Kelamin',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: "perempuan",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                  activeColor: Colors.white,
                ),
                Text(
                  'Perempuan',
                  style: TextStyle(color: Colors.white),
                ),
                Radio(
                  value: "laki-laki",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                  activeColor: Colors.white,
                ),
                Text(
                  'Laki-laki',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Berat Badan (kg)',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                  filled: true,
                ),
                onChanged: (value) {
                  weight = double.parse(value);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Tinggi Badan (cm)',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                  filled: true,
                ),
                onChanged: (value) {
                  height = double.parse(value);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Usia',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                  filled: true,
                ),
                onChanged: (value) {
                  age = int.parse(value);
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.all(16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                  child: Text(
                    'Hitung',
                    style: TextStyle(color: Colors.blue, fontSize: 18.0),
                  ),
                  onPressed: () {
                    calculateBMR();
                    setState(() {});
                  },
                ),
              ),
            ),
            if (bmr > 0)
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Hasil perhitungan BMR berada di angka ',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: '${bmr.toStringAsFixed(1)} kkal',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text:
                              '\n\nKamu memerlukan :\nKebutuhan Karbohidrat sebanyak ',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: '${karbohidrat.toStringAsFixed(1)} gram',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '\nKebutuhan Lemak sebanyak ',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: '${lemak.toStringAsFixed(1)} gram',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '\nKebutuhan Protein sebanyak ',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: '${protein.toStringAsFixed(1)} gram',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
