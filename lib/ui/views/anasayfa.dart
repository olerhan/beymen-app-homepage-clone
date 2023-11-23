import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karusel_calismasi/data/entity/utility.dart';
import 'package:karusel_calismasi/data/entity/vitrin_model.dart';
import 'package:karusel_calismasi/data/entity/renkler.dart';
import 'package:karusel_calismasi/ui/cubit/anasayfa_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  var vitrin1ListeCubit = Vitrin1ListeCubit();
  var vitrin1AktifIndeksCubit = Vitrin1AktifIndeksCubit();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {  //widget ağacının tamamen oluşturulduktan ve ilk frame'in çizildikten sonra gerçekleştirilmesini sağlar.
      vitrin1ListeCubit.veriGetir();
    });
  }


  @override
  Widget build(BuildContext context) {
    final double ekranGenisligi = Utility.hesaplaEkranGenisligi(context)[1];
    final double eGenK = Utility.hesaplaEkranGenisligi(context)[0];


    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text("V I T R I N",style: TextStyle(color: mavi))
          ),
        ),
        body: Column(
            children: [
              VitrinViewModel(vitrinNListeCubit: vitrin1ListeCubit, vitrinNAktifIndeksCubit: vitrin1AktifIndeksCubit, widgetAspectRatioY: 9, widgetAspectRatioX: 16)
            ]
        )
    );
  }
}