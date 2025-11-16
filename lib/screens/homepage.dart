import 'package:flutter/material.dart';
import 'package:tugas6/widgets/listview.dart';
import 'package:tugas6/gridview/gridview.dart'; 

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
     child: Scaffold(
        appBar: AppBar(
          title: Text("Daftar Wisata"),
          backgroundColor : Colors.blueGrey,
          bottom: TabBar(tabs: [
             Tab(icon: Icon(Icons.list,
             color: Colors.white,
             ), text: 'List View',),
             Tab(icon: Icon(Icons.grid_on,
             color: Colors.white,), text: 'Grid View',),
          ]
          ),
        ),
        body: TabBarView(
          children: [
            Listview(),
            TampilanGrid(),
        ]
        ),
      ),
    );
  }
}
