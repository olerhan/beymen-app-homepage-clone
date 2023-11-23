import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karusel_calismasi/data/entity/vitrin_model.dart';
import 'package:karusel_calismasi/data/repo/vitrinDao_repository.dart';

//VİTRİN1
//Carousel Slider Widget ve veri tabanı entegrasyonu için
class VitrinListeCubit extends Cubit<List<VitrinModel>> {
  VitrinListeCubit():super(<VitrinModel>[]);

  Future<void> vitrin1Getir() async {
    var vitrin1ListesiEmit = await Vitrin1DaoRepository().vitrin1DaodanYukle();
    emit(vitrin1ListesiEmit);
  }

  Future<void> vitrin2Getir() async {
    var vitrin2ListesiEmit = await Vitrin2DaoRepository().vitrin2DaodanYukle();
    emit(vitrin2ListesiEmit);
  }
}
//Carousel Slider ve Smooth Page Indicator entegrasyonu için
class VitrinAktifIndeksCubit extends Cubit<int> {
  VitrinAktifIndeksCubit():super(0);

  void vitrin1AktifIndeksGetir(int cubiteInitIndeks){
    emit(cubiteInitIndeks);
  }

  void vitrin2AktifIndeksGetir(int cubiteInitIndeks){
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
