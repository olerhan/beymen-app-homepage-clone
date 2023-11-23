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
  var vitrin2ListeCubit = Vitrin2ListeCubit();
  var vitrin2AktifIndeksCubit = Vitrin2AktifIndeksCubit();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //context'in widget ağacının tamamen oluşturulduktan ve ilk frame'in çizildikten sonra gerçekleştirilmesini sağlar.
      //Verilerimizi önce getirmemiz gerekiyor.
      vitrin1ListeCubit.veriGetir();
      vitrin2ListeCubit.veriGetir();
    });
  }

  @override
  Widget build(BuildContext context) {

    //Adaptive Design
    final double ekranGenisligi = Utility.hesaplaEkranGenisligi(context)[1];
    final double eGenK = Utility.hesaplaEkranGenisligi(context)[0];

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(height: 14*eGenK,),
                VitrinViewModel(vitrinNListeCubit: vitrin1ListeCubit, vitrinNAktifIndeksCubit: vitrin1AktifIndeksCubit, widgetAspectRatioY: 1, widgetAspectRatioX: 1.5, padLeftRight: 10*eGenK, padtop: 0*eGenK, padbottom: 0*eGenK,),
                SizedBox(height: 14*eGenK,),
                VitrinViewModel(vitrinNListeCubit: vitrin2ListeCubit, vitrinNAktifIndeksCubit: vitrin2AktifIndeksCubit, widgetAspectRatioY: 1, widgetAspectRatioX: 1.5, padLeftRight: 10*eGenK, padtop: 0*eGenK, padbottom: 0*eGenK,),
                SizedBox(height: 30*eGenK,),
                Text("Öne Çıkanlar", style: TextStyle(fontFamily: "TTNormsPro", fontWeight: FontWeight.w500 ),)
              ]
          ),
        ),
    );
  }
}