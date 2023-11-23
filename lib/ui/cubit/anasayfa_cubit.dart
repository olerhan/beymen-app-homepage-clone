import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karusel_calismasi/data/entity/vitrin_model.dart';
import 'package:karusel_calismasi/data/repo/vitrinDao_repository.dart';

//VİTRİN LİSTE VERİLERİ
abstract class VitrinListeCubit extends Cubit<List<VitrinModel>> {
  VitrinListeCubit() : super(<VitrinModel>[]);
  Future<void> veriGetir();
}
class Vitrin1ListeCubit extends VitrinListeCubit {
  var vitrin1DaoRepository = Vitrin1DaoRepository();
  @override
  Future<void> veriGetir() async {
    var vitrin1ListesiEmit = await vitrin1DaoRepository.vitrin1DaodanYukle();
    emit(vitrin1ListesiEmit);
  }
}
class Vitrin2ListeCubit extends VitrinListeCubit {
  var vitrin2DaoRepository = Vitrin2DaoRepository();
  @override
  Future<void> veriGetir() async {
    var vitrin2ListesiEmit = await vitrin2DaoRepository.vitrin2DaodanYukle();
    emit(vitrin2ListesiEmit);
  }
}
//VitrinListeCubit soyut (abstract) bir sınıftır ve veriGetir soyut bir metottur.
// Vitrin1ListeCubit ve Vitrin2ListeCubit sınıfı VitrinListeCubit'ten türetilmiştir.
// veriGetir metodunu uygulamak (override etmek) zorundadır.




//Carousel Slider ve Smooth Page Indicator entegrasyonu için
abstract class VitrinAktifIndeksCubit extends Cubit<int> {
  VitrinAktifIndeksCubit() : super(0);
  void getirVitrinAktifIndeks(int cubiteInitIndeks);
}
class Vitrin1AktifIndeksCubit extends VitrinAktifIndeksCubit {
  @override
  void getirVitrinAktifIndeks(int cubiteInitIndeks){
    emit(cubiteInitIndeks);
  }
}
class Vitrin2AktifIndeksCubit extends VitrinAktifIndeksCubit {
  @override
  void getirVitrinAktifIndeks(int cubiteInitIndeks){
    emit(cubiteInitIndeks);
  }
}
