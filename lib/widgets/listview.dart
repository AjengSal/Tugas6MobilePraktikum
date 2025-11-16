import 'package:flutter/material.dart';
import 'package:tugas6/models/wisata.dart';
import 'package:tugas6/screens/detailpage.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    Wisata w = Wisata();
    return ListView.builder(
      itemCount: w.data.length,
      itemBuilder: (context, index) {
        final item = w.data[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => DetailPage(
                nama: item['nama']!,
                gambar: item['gambar']!,
                deskripsi: item['deskripsi']!,
              ),
            ));
          },
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: Image.network(item['gambar']!, width: 100, fit: BoxFit.cover),
              title: Text(item['nama']!),
            ),
          ),
        );
      },
    );
  }
}
