import 'package:flutter/material.dart';
import 'package:karusel_calismasi/data/entity/utility.dart';
import 'package:karusel_calismasi/data/entity/vitrin_model.dart';
import 'package:karusel_calismasi/data/entity/renkler.dart';
import 'package:karusel_calismasi/ui/cubit/anasayfa_cubit.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  var vitrin1ListeCubit = Vitrin1ListeCubit();
  var vitrin1AktifIndeksCubit = Vitrin1AktifIndeksCubit();
  var vitrin2ListeCubit = Vitrin1ListeCubit();
  var vitrin2AktifIndeksCubit = Vitrin1AktifIndeksCubit();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {  //widget ağacının tamamen oluşturulduktan ve ilk frame'in çizildikten sonra gerçekleştirilmesini sağlar.
      vitrin1ListeCubit.veriGetir();
      vitrin2ListeCubit.veriGetir();
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
              VitrinViewModel(vitrinNListeCubit: vitrin2ListeCubit, vitrinNAktifIndeksCubit: vitrin2AktifIndeksCubit, widgetAspectRatioY: 9, widgetAspectRatioX: 16),
              VitrinViewModel(vitrinNListeCubit: vitrin1ListeCubit, vitrinNAktifIndeksCubit: vitrin1AktifIndeksCubit, widgetAspectRatioY: 9, widgetAspectRatioX: 16)
            ]
        )
    );
  }
}