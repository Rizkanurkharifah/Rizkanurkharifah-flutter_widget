import 'package:flutter/material.dart';

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  TeksUtama({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => state;
}

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Rizka Nur Kharifah',
    'Ayu Setiyowati',
    'Linda Senja Anggraeni',
    'Julia Kurnia Mubarokah',
    'Tria Bela Sisiliana',
  ];
  var listWarna = [
    const Color.fromARGB(255, 44, 42, 42),
    const Color.fromARGB(255, 58, 61, 104),
    Color.fromARGB(255, 199, 18, 160),
    Color.fromARGB(255, 24, 20, 94),
    Color.fromARGB(255, 226, 211, 5),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 16.0),
        Text(
          'Apa kabar',
          textDirection: TextDirection.ltr,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          listNama[index % listNama.length],
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: listWarna[index % listWarna.length],
          ),
        ),
      ],
    );
  }

  void incrementIndex() {
    setState(() {
      index++;
    });
  }
}

void main() {
  TeksUtama teksUtama = TeksUtama();
  runApp(MaterialApp(
    title: 'Halo Dunia',
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[800],
        title: const Text(
          'Halo Dunia',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 110, 129, 235), // Ganti warna latar belakang di sini
        ),
        child: Center(child: teksUtama),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Random',
        onPressed: teksUtama.state.incrementIndex,
        child: const Icon(Icons.refresh),
      ),
    ),
  ));
}