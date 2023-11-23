
import 'package:flutter/material.dart';
import 'package:karusel_calismasi/data/entity/utility.dart';
import 'package:karusel_calismasi/ui/views/anasayfa.dart';
import 'package:karusel_calismasi/ui/views/arama.dart';
import 'package:karusel_calismasi/ui/views/kategoriler.dart';
import 'package:karusel_calismasi/ui/views/profilim.dart';
import 'package:karusel_calismasi/ui/views/sepetim.dart';

class BottomNavigationSayfa extends StatefulWidget {
  const BottomNavigationSayfa({super.key});

  @override
  State<BottomNavigationSayfa> createState() => _BottomNavigationSayfaState();
}

class _BottomNavigationSayfaState extends State<BottomNavigationSayfa> {
  int secilenIndeks = 0;
  var sayfalar = [const Anasayfa(),const Kategoriler(),const Sepetim(),const Arama(),const Profilim()];


  @override
  Widget build(BuildContext context) {

    //Adaptive Design
    final double ekranGenisligi = Utility.hesaplaEkranGenisligi(context)[1];
    final double eGenK = Utility.hesaplaEkranGenisligi(context)[0];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Column(
            children: [
              SizedBox(width: 220*eGenK,
                  child: Image.asset(
                    "resimler/beymenlogodotblue.png",
                  )
              ),
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.2*eGenK), // Divider'ın yüksekliği
          child: Column(
            children: [
              Divider(
                color: Colors.grey.shade300, // Divider rengi
                height: 1.0*eGenK, // Toplam yükseklik
                thickness: 1.0*eGenK, // Çizginin kalınlığı
              ),
              Divider(
                color: Colors.grey.shade100, // Divider rengi
                height: 0.2*eGenK, // Toplam yükseklik
                thickness: 0.2*eGenK, // Çizginin kalınlığı
              ),
            ],
          ),
        ),
      ),
      body: sayfalar[secilenIndeks],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: "Anasayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.reorder),label: "Kategoriler"),
          BottomNavigationBarItem(icon: Icon(Icons.local_mall_outlined),label: "Sepetim"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Arama"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: "Profilim"),
        ],
        currentIndex: secilenIndeks,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.grey.shade900,
        unselectedItemColor: Colors.grey.shade600,
        type: BottomNavigationBarType.fixed,
        iconSize: 24*eGenK,
        selectedFontSize: 11*eGenK,
        unselectedFontSize: 11*eGenK,
        selectedLabelStyle: TextStyle(fontFamily: 'TTNormsPro'),
        unselectedLabelStyle: TextStyle(fontFamily: 'TTNormsPro'),

        onTap: (indeks){
          setState(() {
            secilenIndeks = indeks;
          });
        },
      ),
    );
  }
}


