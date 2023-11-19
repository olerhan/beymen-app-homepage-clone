import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:karusel_calismasi/data/entity/vitrin.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  Future<List<Vitrin>> vitriniYukle() async {
    var v1 = Vitrin(id: 1, ad: "Elbise", resim: "elbise.jpg");
    var v2 = Vitrin(id: 1, ad: "Elbise", resim: "bodi.jpg");
    var v3 = Vitrin(id: 1, ad: "Elbise", resim: "kimono.jpg");
    var vitrinListesi = <Vitrin>[];//bu liste fonksiyon dışında tanımlı değildir.
    vitrinListesi.add(v1);
    vitrinListesi.add(v2);
    vitrinListesi.add(v3);
    return vitrinListesi;
  }
  int aktifIndeks = 0;//CarouselSlider'daki mevcut sayfa index'ini takip etmek için bir değişken
  // _ ifadesi dışarıdan yanlışlıkla erişilmemesi için

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vitrin"),),
      body: FutureBuilder<List<Vitrin>>//hangi türden veri geleceği
        (future: vitriniYukle(),//veriyi getirecek fonksiyon
          builder: (context, snapshot){//BuildContext türündeki context ve anlık durum snapshot
        if(snapshot.hasData){
          var vitrinListesi = snapshot.data;//gelen anlık vitrin listesini erişilebilir bir vitrinlistesi değişkenine tanımladık.
          return Column(
            children: [
              CarouselSlider.builder(
                  itemCount: vitrinListesi!.length,//3 adet nesne gelecek
                  itemBuilder: (BuildContext context, int nesneIndeks, int gosterimIndex){
                    var vitrin = vitrinListesi[nesneIndeks];
                    return Container(
                      child: Center(
                        child: Image.asset("resimler/${vitrin.resim}", fit: BoxFit.cover, width: 1000,),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    onPageChanged: (indeks, reason) {
                      setState(() {
                        aktifIndeks = indeks;
                      });
                    }
                  )
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AnimatedSmoothIndicator(
                    activeIndex: aktifIndeks,
                    count: vitrinListesi!.length,
                    effect: ExpandingDotsEffect(
                      expansionFactor: 1.6,
                      dotHeight: 5,
                      dotWidth: 9,
                      spacing: 3,
                      activeDotColor: Colors.black,
                      dotColor: Colors.grey,
                    ),
                  ),
                ),
              )
            ],
          );
      }else if (snapshot.connectionState == ConnectionState.waiting) {//Yükleme sırasında gösterilecek widget
          return CircularProgressIndicator();
        }else{
          return const Center();//veri yoksa boş bir sayfa döndürecek
        }
        }
      ),
    );
  }
}
