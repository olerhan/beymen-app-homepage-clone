import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karusel_calismasi/data/entity/renkler.dart';
import 'package:karusel_calismasi/data/entity/utility.dart';
import 'package:karusel_calismasi/ui/cubit/anasayfa_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class VitrinModel {
  int id;
  String ad;
  String resimUrl;

  VitrinModel({required this.id,required this.ad,required this.resimUrl});
}

class VitrinViewModel extends StatefulWidget {

  VitrinListeCubit vitrinNListeCubit;
  VitrinAktifIndeksCubit vitrinNAktifIndeksCubit;
  double widgetAspectRatioY;
  double widgetAspectRatioX;
  double padLeftRight;
  double padtop;
  double padbottom;

  VitrinViewModel(
      {
        required this.vitrinNListeCubit,
        required this.vitrinNAktifIndeksCubit,
        required this.widgetAspectRatioY,
        required this.widgetAspectRatioX,
        required this.padLeftRight,
        required this.padtop,
        required this.padbottom,

      });

  @override
  State<VitrinViewModel> createState() => _VitrinViewModelState();
}

class _VitrinViewModelState extends State<VitrinViewModel> {

  @override
  Widget build(BuildContext context) {

    final double ekranGenisligi = Utility.hesaplaEkranGenisligi(context)[1];
    final double eGenK = Utility.hesaplaEkranGenisligi(context)[0];

    return Padding(
      padding: EdgeInsets.only(left: widget.padLeftRight, right: widget.padLeftRight, top: widget.padtop, bottom: widget.padbottom),
      child: SizedBox(
          width: ekranGenisligi-widget.padLeftRight*2,
          height: ((ekranGenisligi-widget.padLeftRight*2) / widget.widgetAspectRatioX) * widget.widgetAspectRatioY,
          child: BlocBuilder<Cubit<List<VitrinModel>>, List<VitrinModel>>(
              bloc: widget.vitrinNListeCubit,
              builder: (context, emitList) {
                if (emitList.isNotEmpty) {
                  return Stack(
                    children: [
                      CarouselSlider.builder(
                          itemCount: emitList.length,
                          itemBuilder: (BuildContext context, int nesneIndeks, int sayfaIndex){
                            var vitrinHerBirNesne = emitList[nesneIndeks];
                            return Container(
                              child: Center(
                                child: FadeInImage.assetNetwork(
                                  placeholder: "resimler/placeholder_b_vitrin.png",
                                  image: "${vitrinHerBirNesne.resimUrl}",
                                  fit: BoxFit.cover,
                                  width: ekranGenisligi,
                                ),
                              ),
                            );
                          },
                          options: CarouselOptions(
                            autoPlay: true,
                            aspectRatio: widget.widgetAspectRatioX / widget.widgetAspectRatioY,
                            enlargeCenterPage: false,
                            viewportFraction: 1,
                            onPageChanged: (cubitSendIndeks, reason){
                              widget.vitrinNAktifIndeksCubit.getirVitrinAktifIndeks(cubitSendIndeks);
                            },
                          )
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.all(8.0 * eGenK),
                          child: BlocBuilder<Cubit<int>, int>(
                            bloc: widget.vitrinNAktifIndeksCubit,
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
    );
  }
}
