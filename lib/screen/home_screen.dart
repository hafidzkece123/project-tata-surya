import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:tatasurya_app/screen/list_planet.dart';
import 'package:tatasurya_app/screen/penjelasan/matahari_page.dart';
import 'package:tatasurya_app/screen/penjelasan/penjelasan_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final header = Stack(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MovieCorausel,
            Container(
              width: MediaQuery.of(context).size.width - 000,
              child: Text(
                "Pengertian Tata Surya",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailScreen()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  height: 70.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [BoxShadow(color: Color(0xff6C94FF))],
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Color(0xffF2E4260), Color(0xff50627E)])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Tata Surya",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.book,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Anggota Sistem Tata Surya",
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MatahariPage()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  height: 70.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [BoxShadow(color: Color(0xff6C94FF))],
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Color(0xffF2E4260), Color(0xff50627E)])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Matahari",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.book,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Planet-planet",
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ],
    );
    final list = Expanded(
        child: Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(child: ListPlanet()),
    ));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff212121),
        title: Padding(
          padding: const EdgeInsets.only(left: 145.0),
          child: Row(
            children: <Widget>[
              Text(
                "Tata ",
                style: TextStyle(
                    color: Color(0xffFFFFFF), fontWeight: FontWeight.bold),
              ),
              Text(
                "Surya",
                style: TextStyle(
                    color: Color(0xff238EFF), fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xff00366E),
      body: Column(
        children: <Widget>[header, list],
      ),
    );
  }

  Widget MovieCorausel = Container(
    height: 200,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Carousel(
        images: [
          NetworkImage(
              'https://i2.wp.com/saintif.com/wp-content/uploads/2019/08/cropped-Ciri-ciri-planet-di-tata-surya-kita.png?resize=678%2C381&ssl=1'),
          NetworkImage(
              'https://i2.wp.com/saintif.com/wp-content/uploads/2019/09/images-20.jpeg?w=721&ssl=1'),
          NetworkImage(
              'https://i0.wp.com/saintif.com/wp-content/uploads/2019/09/images-12.jpeg?w=640&ssl=1'),
          NetworkImage(
              'https://i2.wp.com/saintif.com/wp-content/uploads/2019/09/Merkurius.jpeg?w=600&ssl=1'),
          NetworkImage(
              'https://i0.wp.com/saintif.com/wp-content/uploads/2019/09/images-14.jpeg?w=600&ssl=1'),
          NetworkImage(
              'https://i0.wp.com/saintif.com/wp-content/uploads/2019/09/images-15.jpeg?w=608&ssl=1'),
          NetworkImage(
              'https://i0.wp.com/saintif.com/wp-content/uploads/2019/09/images-16.jpeg?w=554&ssl=1'),
        ],
        dotSize: 5.0,
        dotSpacing: 15.0,
        dotColor: Color(0xff21D344),
        indicatorBgPadding: 10.0,
        dotBgColor: Colors.black.withOpacity(0.2),
        animationCurve: Curves.easeInOut,
        borderRadius: true,
        radius: Radius.circular(15),
      ),
    ),
  );
}
