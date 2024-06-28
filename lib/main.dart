import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeksUtama',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TeksUtama'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TeksUtama(
                teks1: 'desta mutiara kardiansyah',
                teks2: 'STI202102389',
              ),
              TeksUtama(
                teks1: 'yusuf jauhar alif faqih',
                teks2: 'STI202102390',
              ),
              TeksUtama(
                teks1: 'randi pangestu',
                teks2: 'STI202102392',
              ),
              TeksUtama(
                teks1: 'septiasih nur inayah',
                teks2: 'STI202102393',
              ),
              TeksUtama(
                teks1: 'awan restu listyanto',
                teks2: 'STI202102395',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  TeksUtama({required this.teks1, required this.teks2});

  @override
  Widget build(BuildContext context) {
    bool isHighlighted = teks1 == 'Venti Setiyani' && teks2 == 'STI202102442';

    return Container(
      width: double.infinity,  // Ensures the container takes full width
      color: isHighlighted ? Colors.green : Colors.transparent,
      padding: EdgeInsets.all(8.0),  // Padding to ensure the text has some space
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,  // Align text to the left
        children: [
          Text(teks1, style: TextStyle(fontSize: 24)),
          Text(teks2, style: TextStyle(fontSize: 24)),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
