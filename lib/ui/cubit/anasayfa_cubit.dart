import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karusel_calismasi/data/entity/vitrin1_model.dart';
import 'package:karusel_calismasi/data/repo/vitrin1dao_repository.dart';


class Vitrin1ListeCubit extends Cubit<List<Vitrin1Model>> {
  Vitrin1ListeCubit():super(<Vitrin1Model>[]);

  Future<void> vitrin1Getir() async {
    var vitrin1ListesiEmit = await Vitrin1DaoRepository().vitrin1DaodanYukle();
    emit(vitrin1ListesiEmit);
  }
}



class Vitrin1AktifIndeksCubit extends Cubit<int> {
  Vitrin1AktifIndeksCubit():super(0);

  void vitrin1AktifIndeksGetir(int cubiteInitIndeks){
    emit(cubiteInitIndeks);
  }
}