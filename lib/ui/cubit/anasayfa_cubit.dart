import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karusel_calismasi/data/entity/vitrin_model.dart';
import 'package:karusel_calismasi/data/repo/vitrinDao_repository.dart';

//VİTRİN1
//Carousel Slider Widget ve veri tabanı entegrasyonu için
class Vitrin1ListeCubit extends Cubit<List<VitrinModel>> {
  Vitrin1ListeCubit():super(<VitrinModel>[]);

  Future<void> vitrin1Getir() async {
    var vitrin1ListesiEmit = await Vitrin1DaoRepository().vitrin1DaodanYukle();
    emit(vitrin1ListesiEmit);
  }
}
//Carousel Slider ve Smooth Page Indicator entegrasyonu için
class Vitrin1AktifIndeksCubit extends Cubit<int> {
  Vitrin1AktifIndeksCubit():super(0);

  void vitrinAktifIndeksGetir(int cubiteInitIndeks){
    emit(cubiteInitIndeks);
  }
}

//VİTRİN2
//Carousel Slider Widget ve veri tabanı entegrasyonu için
class Vitrin2ListeCubit extends Cubit<List<VitrinModel>> {
  Vitrin2ListeCubit():super(<VitrinModel>[]);

  Future<void> vitrin2Getir() async {
    var vitrin2ListesiEmit = await Vitrin2DaoRepository().vitrin2DaodanYukle();
    emit(vitrin2ListesiEmit);
  }
}
//Carousel Slider ve Smooth Page Indicator entegrasyonu için
class Vitrin2AktifIndeksCubit extends Cubit<int> {
  Vitrin2AktifIndeksCubit():super(0);

  void vitrinAktifIndeksGetir(int cubiteInitIndeks){
    emit(cubiteInitIndeks);
  }
}
