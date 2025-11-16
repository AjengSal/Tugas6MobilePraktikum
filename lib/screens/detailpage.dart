import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String nama, gambar, deskripsi;

  DetailPage({required this.nama, required this.gambar, required this.deskripsi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nama),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(gambar, height: 250, fit: BoxFit.contain),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              nama,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              deskripsi,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
