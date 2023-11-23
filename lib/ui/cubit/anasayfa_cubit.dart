import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karusel_calismasi/data/entity/vitrin_model.dart';
import 'package:karusel_calismasi/data/repo/vitrinDao_repository.dart';

abstract class VitrinListeCubit extends Cubit<List<VitrinModel>> {
  VitrinListeCubit() : super(<VitrinModel>[]);

  Future<void> veriGetir();
}
class Vitrin1ListeCubit extends VitrinListeCubit {
  @override
  Future<void> veriGetir() async {
    var vitrin1ListesiEmit = await Vitrin1DaoRepository().vitrin1DaodanYukle();
    emit(vitrin1ListesiEmit);
  }
}

class Vitrin2ListeCubit extends VitrinListeCubit {
  @override
  Future<void> veriGetir() async {
    var vitrin2ListesiEmit = await Vitrin2DaoRepository().vitrin2DaodanYukle();
    emit(vitrin2ListesiEmit);
  }
}


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
