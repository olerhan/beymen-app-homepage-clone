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
        appBar: AppBar(
          title: Center(
              child: Text("V I T R I N",style: TextStyle(color: mavi))
          ),
        ),
        body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(),
                child: VitrinViewModel(vitrinNListeCubit: vitrin1ListeCubit, vitrinNAktifIndeksCubit: vitrin1AktifIndeksCubit, widgetAspectRatioY: 1, widgetAspectRatioX: 1.5),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: VitrinViewModel(vitrinNListeCubit: vitrin2ListeCubit, vitrinNAktifIndeksCubit: vitrin2AktifIndeksCubit, widgetAspectRatioY: 1, widgetAspectRatioX: 1.5),
              ),
            ]
        )
    );
  }
}