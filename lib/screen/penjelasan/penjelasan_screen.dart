import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff212121),
        title: Padding(
          padding: const EdgeInsets.only(left: 90.0),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: MediaQuery.of(context).size.width - 000,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5),
                    child: Text(
                      "Tata Surya",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 10),
                    child: Text(
                      "Tata Surya[a] adalah kumpulan benda langit yang terdiri atas sebuah bintang yang disebut Matahari dan semua objek yang terikat oleh gaya gravitasinya. Objek-objek tersebut termasuk delapan buah planet yang sudah diketahui dengan orbit berbentuk elips, lima planet kerdil/katai, 173 satelit alami yang telah diidentifikasi,[b] dan jutaan benda langit (meteor, asteroid, komet) lainnya.\n\nTata Surya terbagi menjadi Matahari, empat planet bagian dalam, sabuk asteroid, empat planet bagian luar, dan di bagian terluar adalah Sabuk Kuiper dan piringan tersebar. Awan Oort diperkirakan terletak di daerah terjauh yang berjarak sekitar seribu kali di luar bagian yang terluar.\n\nBerdasarkan jaraknya dari Matahari, kedelapan planet Tata Surya ialah Merkurius (57,9 juta km), Venus (108 juta km), Bumi (150 juta km), Mars (228 juta km), Jupiter (779 juta km), Saturnus (1.430 juta km), Uranus (2.880 juta km), dan Neptunus (4.500 juta km). Keempat planet terdalam, yaitu Merkurius, Venus, Bumi, dan Mars adalah planet kebumian yang terdiri atas batuan dan logam. Sementara itu, keempat planet terluar adalah planet raksasa yang jauh lebih besar dari planet kebumian. Dua planet terbesar, yaitu Jupiter dan Saturnus adalah planet raksasa gas yang sebagian bersar terdiri atas hidrogen dan helium. Dua planet lainnya, Uranus dan Neptunus, adalah planet raksasa es yang terdiri atas senyawa dengan titik leleh lebih tinggi dari hidrogen dan helium, disebut senyawa volatil seperti air, amonia, dan metana.\n\nSejak pertengahan 2008, ada lima objek angkasa yang diklasifikasikan sebagai planet katai. Orbit planet-planet katai, kecuali Ceres, berada lebih jauh dari Neptunus. Kelima planet katai tersebut ialah Ceres (415 juta km. di sabuk asteroid; dulunya diklasifikasikan sebagai planet kelima), Pluto (5.906 juta km.; dulunya diklasifikasikan sebagai planet kesembilan), Haumea (6.450 juta km), Makemake (6.850 juta km), dan Eris (10.100 juta km).\n\nEnam dari kedelapan planet dan tiga dari kelima planet katai itu dikelilingi oleh satelit alami. Masing-masing planet bagian luar dikelilingi oleh cincin planet yang terdiri dari debu dan partikel lain.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
