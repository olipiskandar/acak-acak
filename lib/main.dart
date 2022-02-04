// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors
import 'package:app_latihan/news.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final _scroll = ScrollController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Game News'),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: 200,
                width: double.maxFinite,
                child: ListView(
                  //ListView dari kiri ke kanan
                  scrollDirection: Axis.horizontal,
                  controller: _scroll,
                  shrinkWrap: true,
                  children: const [
                    ItemGameAtas(
                      judulGame: "Benshin Impak",
                      alamatGambar:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBSp_0tJALMA7Po3M8rUFxvJ0bh9ENnrM-uYZC4tMOSmrKMkeHCQyLy765VXATKC4wIHk&usqp=CAU',
                    ),
                    ItemGameAtas(
                      judulGame: "Resident Angle 8",
                      alamatGambar:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX7sv4W9qDyrqzSSwehJEglDnW6cRrS8fIinh0v-eC5CBCLsvUAymh3vAmcaKfePYkSpI&usqp=CAU',
                    ),
                    ItemGameAtas(
                      judulGame: "PEPES 2022",
                      alamatGambar:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMLqf0_wahL27z2UaXTn4G81efj0J1kc0oZxGgwd7rO-sHjy8lS3ZWwt_MuTZWnZTi0LQ&usqp=CAU',
                    ),
                    ItemGameAtas(
                      judulGame: "DOTA 5 ",
                      alamatGambar:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWeaXpYwORmnU4JdmDKAINEAXiDgA1f918zw&usqp=CAU',
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                height: 500,
                // color: Colors.indigo,
                child: ListView(
                  controller: _scroll,
                  shrinkWrap: true,
                  children: const [
                    ItemGameBawah(
                      alamatGambar:
                          'https://cdn.akamai.steamstatic.com/steam/apps/1314563/capsule_616x353.jpg?t=1631137066',
                      judulGame: 'Destiny 2',
                    ),
                    ItemGameBawah(
                      alamatGambar:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSD_iYxRaKLcjKzABM9cC2D8fOt5i21Mzsh3YC6VaJ7IiBvMqAHCi0E8lQrHc7A3MPa0w&usqp=CAU',
                      judulGame: 'Gundam',
                    ),
                    ItemGameBawah(
                      alamatGambar:
                          'https://esportsnesia.com/wp-content/uploads/2020/06/game-free-fire-max.jpg',
                      judulGame: 'Game Burik 2022',
                    ),
                    ItemGameBawah(
                      alamatGambar:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfM19Kr-tRfb-TnJVgqbTX_hTcr7Z2M7SioZyCpVfuThR18KHg-mU-BD_KGbmiOUD6aW4&usqp=CAU',
                      judulGame: 'Minecraft MOD',
                    ),
                    // silahkan tambah sendiri...
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemGameAtas extends StatelessWidget {
  const ItemGameAtas({
    required this.alamatGambar,
    required this.judulGame,
    Key? key,
  }) : super(key: key);

  final String alamatGambar;
  final String judulGame;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailNews(
              judulGame: judulGame,
              urlGambar: alamatGambar,
            ),
          ),
        );
      },
      child: Container(
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.all(8),
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          // color: Colors.red,
          image: DecorationImage(
            image: NetworkImage(alamatGambar),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black,
          padding: EdgeInsets.all(10),
          child: Text(
            judulGame,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class ItemGameBawah extends StatelessWidget {
  const ItemGameBawah({
    required this.alamatGambar,
    required this.judulGame,
    Key? key,
  }) : super(key: key);

  final String alamatGambar, judulGame;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailNews(
              judulGame: judulGame,
              urlGambar: alamatGambar,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.lightBlue,
        ),
        height: 120,
        child: Row(
          children: [
            Container(
              width: 150,
              height: double.maxFinite,
              color: Colors.blue,
              child: Image.network(
                alamatGambar,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Text(
                        judulGame,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      ),
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
