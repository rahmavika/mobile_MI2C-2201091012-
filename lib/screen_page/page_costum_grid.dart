import 'package:flutter/material.dart';
import 'package:web_framework/screen_page/detail_grid.dart';


class PageCustomeGrid extends StatefulWidget {
  const PageCustomeGrid({super.key});

  @override
  State<PageCustomeGrid> createState() => PageCustomeGridState();
}

class PageCustomeGridState extends State<PageCustomeGrid> {
  List<Map<String, dynamic>> listMovie = [
    {
      "judul": "Spiderman No Way Home",
      "gambar": "spiderman.jpeg",
      "harga": 45000,
    },
    {
      "judul": "Avatar",
      "gambar": "avatar.jpeg",
      "harga": 35000,
    },
    {
      "judul": "Madagascar",
      "gambar": "madagascar.jpeg",
      "harga": 50000,
    },
    {
      "judul": "Maleficent 1",
      "gambar": "maleficent.jpeg",
      "harga": 45000,
    },
    {
      "judul": "Harry Potter",
      "gambar": "harry.jpeg",
      "harga": 35000,
    },
    {
      "judul": "Scooby Doo",
      "gambar": "scoobi.jpeg",
      "harga": 45000,
    },
    {
      "judul": "Snow White",
      "gambar": "snowwhite.jpeg",
      "harga": 45000,
    },
    {
      "judul": "Monster and Alien",
      "gambar": "monster.jpeg",
      "harga": 35000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Custome Grid"),
          backgroundColor: Colors.green,
        ),
        body: GridView.builder(
            itemCount: listMovie.length,
            gridDelegate: const
            SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              DetailGrid(listMovie[index])));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridTile(
                      footer: Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color:
                            Colors.black)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: [
                            Text(
                              "${listMovie[index]["judul"]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text("Rp. ${listMovie[index]["harga"]}")
                          ],
                        ),
                      ),
                      child:
                      Image.asset("images/${listMovie[index]["gambar"]}")),
                ),
              );
            }),
        );
   }
}