import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karusel_calismasi/data/entity/vitrin1_model.dart';
import 'package:karusel_calismasi/data/entity/renkler.dart';
import 'package:karusel_calismasi/ui/cubit/anasayfa_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  void initState() {
    super.initState();
    context.read<Vitrin1ListeCubit>().vitrin1Getir();
  }

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    final double eGenK = ekranGenisligi / 411.42857142857144;
    print("Ekran Genişliği: $ekranGenisligi Ekran Yüksekliği: $ekranYuksekligi");
    print("Genişlik Katsayısı: $eGenK");


    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text("V I T R I N",style: TextStyle(color: mavi))
          ),
        ),
        body: Column(
            children: [
              SizedBox(
                  width: ekranGenisligi,
                  height: (ekranGenisligi / 16) * 9,
                  child: BlocBuilder<Vitrin1ListeCubit, List<Vitrin1Model>>(
                      builder: (context, emitList) {
                        if (emitList.isNotEmpty) {
                          return Stack(
                            children: [
                              CarouselSlider.builder(
                                  itemCount: emitList.length,
                                  itemBuilder: (BuildContext context, int nesneIndeks, int sayfaIndex){
                                    var vitrin1HerBirNesne = emitList[nesneIndeks];
                                    return Container(
                                      child: Center(
                                        child: FadeInImage.assetNetwork(
                                          placeholder: "resimler/vitrin_placeholder.png",
                                          image: "https://images.unsplash.com/${vitrin1HerBirNesne.resimUrl}",
                                          fit: BoxFit.cover,
                                          width: ekranGenisligi,
                                        ),
                                      ),
                                    );
                                    },
                                  options: CarouselOptions(
                                      autoPlay: true,
                                      aspectRatio: 16 / 9,
                                      enlargeCenterPage: false,
                                      viewportFraction: 1,
                                      onPageChanged: (cubitSendIndeks, reason){
                                        context.read<Vitrin1AktifIndeksCubit>().vitrin1AktifIndeksGetir(cubitSendIndeks);
                                      },
                                  )
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: EdgeInsets.all(8.0 * eGenK),
                                    child: BlocBuilder<Vitrin1AktifIndeksCubit, int>(
                                    builder: (context, emitAktifIndeks){
                                      return AnimatedSmoothIndicator(
                                        activeIndex: emitAktifIndeks,
                                        count: emitList.length,
                                        effect: ExpandingDotsEffect(
                                          expansionFactor: 1.6,
                                          dotHeight: 5 * eGenK,
                                          dotWidth: 9 * eGenK,
                                          spacing: 3 * eGenK,
                                          activeDotColor: mavi,
                                          dotColor: Colors.white,
                                        ),
                                      );
                                    },
                                    ),
                                ),
                              ),
                            ],
                          );
                        }else{
                          print("veri bekleniyor");
                          return Center(child: CircularProgressIndicator());
                        }
                      }
                      )
              ),
            ]
        )
    );
  }
}